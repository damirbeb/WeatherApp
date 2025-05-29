class WeatherData {
  final String condition;
  final num temperature;
  final num feelsLike;
  final num pressure;
  final num visibility;
  final String humidity;
  final num windSpeed;
  final String country;
  final String name;
  final String icon;

  WeatherData({
    required this.condition,
    required this.temperature,
    required this.feelsLike,
    required this.pressure,
    required this.visibility,
    required this.humidity,
    required this.windSpeed,
    required this.country,
    required this.name,
    required this.icon,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      condition: json['weather'][0]['main'] ?? 'Unknown',
      temperature: (json['main']['temp'] ?? 0).round(),
      feelsLike: (json['main']['feels_like'] ?? 0).round(),
      visibility: ((json['visibility'] ?? 0) / 1000).round(),
      pressure: json['main']['pressure'] ?? 0,
      humidity: (json['main']['humidity'] ?? 0).toString(),
      windSpeed: (json['wind']['speed'] ?? 0) * 3.6,
      country: json['sys']['country'] ?? 'Unknown',
      name: json['name'] ?? 'Unknown',
      icon: json['weather'][0]['icon'] ?? '01d',
    );
  }
}