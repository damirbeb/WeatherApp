import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:Weather/models/weather.dart';
import 'package:simple_location_picker/simple_location_result.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String apiKey = "c6a6c99477f0a887c1b98f9422fef954";
  SimpleLocationResult? arguments;

  Future<void> getData({double? lat, double? lon}) async {
    String latitude = lat?.toString() ?? "31.5925";
    String longitude = lon?.toString() ?? "74.3095";

    Response response = await get(Uri.parse(
        "http://api.openweathermap.org/data/2.5/weather?units=metric&lat=$latitude&lon=$longitude&appid=$apiKey"));
    Map<String, dynamic> data = jsonDecode(response.body);

    Navigator.pushReplacementNamed(context, "/weather",
        arguments: {
          "weatherData": WeatherData.fromJson(data),
          "selectedLocation": arguments
        });
  }

  @override
  Widget build(BuildContext context) {
    arguments = ModalRoute.of(context)?.settings.arguments as SimpleLocationResult?;
    Future.delayed(const Duration(seconds: 1), () {
      arguments != null
          ? getData(lat: arguments!.latitude, lon: arguments!.longitude)
          : getData();
    });
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/loading.json"),
      ),
    );
  }
}