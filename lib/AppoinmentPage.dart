// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

// ignore: camel_case_types
class AppoinmentPage extends StatefulWidget {
  final emailCotroller = TextEditingController();
  final nameController = TextEditingController();

  AppoinmentPage({Key? key}) : super(key: key);

  @override

  //final User = Provider.of<User>(context);
  _AppoinmentPageState createState() => _AppoinmentPageState();
}

// ignore: camel_case_types
class _AppoinmentPageState extends State<AppoinmentPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    //User user = Provider.of<User>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hospital Management App'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
