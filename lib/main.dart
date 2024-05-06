import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/User.dart';
import 'package:provider/provider.dart';

import 'routes/routes.dart';

void main() {
  // Run the app by calling the runApp function and passing an instance ofMyApp

  runApp(const MyApp());
}

// The main application class, extending StatelessWidget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => User(),
      // Display a MaterialApp widget, which is the root of the application
      child: const MaterialApp(
        initialRoute: RouteManager.registrationPage,
        onGenerateRoute: RouteManager.generateRoute,
      ),
    );
  }
}
