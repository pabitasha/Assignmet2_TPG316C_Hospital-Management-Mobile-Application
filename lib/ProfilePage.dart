import 'package:flutter/material.dart';

// ignore: camel_case_types
class MyProfilePage extends StatefulWidget {
  final emailCotroller = TextEditingController();
  final nameController = TextEditingController();

  MyProfilePage({Key? key}) : super(key: key);

  @override

  //final User = Provider.of<User>(context);
  _MyProfilePageState createState() => _MyProfilePageState();
}

// ignore: camel_case_types
class _MyProfilePageState extends State<MyProfilePage> {
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
