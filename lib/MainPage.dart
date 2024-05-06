// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class MainPage extends StatefulWidget {
  final emailCotroller = TextEditingController();
  final nameController = TextEditingController();

  MainPage({Key? key}) : super(key: key);

  @override

  //final User = Provider.of<User>(context);
  _MainPageState createState() => _MainPageState();
}

// ignore: camel_case_types
class _MainPageState extends State<MainPage> {
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.of(context).pushNamed(RouteManager.USPage);
                      // context.read<User>().understood =
                      //understoodCotroller.text;
                    },
                    child: const Text("Appoinment Pages"),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.of(context).pushNamed(RouteManager.USPage);
                      // context.read<User>().understood =
                      //understoodCotroller.text;
                    },
                    child: const Text("My-Profile Page"),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.of(context).pushNamed(RouteManager.NotUSPage);
                      // context.read<User>().notUnderstood =
                      // notUnderstoodCotroller.text;
                    },
                    child: const Text("Review Page"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
