# WeatherApp 🌤️⛅🌦️

[![Flutter](https://img.shields.io/badge/Flutter-2.10.0-blue.svg)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-2.16.2-blue.svg)](https://dart.dev)

A minimalist, accurate weather application built with Flutter using MVVM architecture and OpenWeatherMap API.

## App Preview 📱
<div align="center">
  <img src="assets/screenshots/app.jpg" width="30%" alt="Main Screen"/>
  <img src="assets/screenshots/map.jpg" width="30%" alt="Map View"/> 
  <img src="assets/screenshots/loadingjpg.jpg" width="30%" alt="Loading Animation"/>
</div>

## Key Features ✨
- Real-time weather data from OpenWeatherMap API
- Clean, intuitive UI with responsive design
- Essential weather metrics (temp, humidity, wind, visibility)
- Location-based forecasts
- Smooth animations and transitions
- Refresh functionality
- Light/Dark mode support

## Technology Stack ⚙️
- **Framework**: Flutter 2.10.5
- **Architecture**: MVVM Pattern
    - **Model**: WeatherData from API
    - **View**: UI Widgets
    - **ViewModel**: Business logic layer
- **State Management**: SetState + Provider
- **API**: OpenWeatherMap
- **Dependencies**:
    - http: API calls
    - lottie: Animations
    - flutter_svg: Weather icons
    - intl: Date formatting
    - google_fonts: Typography

## Competitive Advantage 🏆
| Feature          | Our App | Yahoo | AccuWeather | Weather Channel |
|------------------|---------|-------|-------------|-----------------|
| Clean Interface  | ✅       | ✅     | ❌           | ❌               |
| No Ads          | ✅       | ❌     | ❌           | ❌               |
| Fast Performance| ✅       | ✅     | ❌           | ❌               |
| Accurate Data   | ✅       | ✅     | ✅           | ✅               |
| Light/Dark Mode | ✅       | ❌     | ❌           | ❌               |

## Installation 🛠️
1. Clone this repository `git clone https://github.com/damirbeb/WeatherApp.git`
2. Run `flutter pub get`
3. Run `flutter run`
