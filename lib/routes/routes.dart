// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/AppoinmentPage.dart';
import 'package:flutter_application_1/LoginPage.dart';
import 'package:flutter_application_1/MainPage.dart';
import 'package:flutter_application_1/ProfilePage.dart';
import 'package:flutter_application_1/Registration_Page.dart';
import 'package:flutter_application_1/ReviewPage.dart';

class RouteManager {
  static const String registrationPage = '/';
  static const String loginPage = '/LoginPage';
  static const String mainPage = '/MainPage';
  static const String appoinmentPage = '/AppoinmentPage';
  static const String myProfilePage = '/ProfilePage';
  static const String reviewPage = '/ReviewPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case registrationPage:
        return MaterialPageRoute(
          builder: (context) => const RegistrationPage(),
        );

      case loginPage:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );

      case mainPage:
        return MaterialPageRoute(
          builder: (context) => MainPage(),
        );

      case appoinmentPage:
        return MaterialPageRoute(
          builder: (context) => AppoinmentPage(),
        );

      case myProfilePage:
        return MaterialPageRoute(
          builder: (context) => MyProfilePage(),
        );

      case reviewPage:
        return MaterialPageRoute(
          builder: (context) => ReviewPage(),
        );

      default:
        throw const FormatException('Route not found!');
    }
  }
}
