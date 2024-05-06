import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/User.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class ReviewPage extends StatefulWidget {
  final emailCotroller = TextEditingController();
  final nameController = TextEditingController();

  ReviewPage({Key? key}) : super(key: key);

  @override

  //final User = Provider.of<User>(context);
  _ReviewPageState createState() => _ReviewPageState();
}

// ignore: camel_case_types
class _ReviewPageState extends State<ReviewPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    //User user = Provider.of<User>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hospital Management App'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        //form
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              //styling
              const Text(
                'Give your review below',
                style: TextStyle(fontSize: 40, color: Colors.black54),
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  border: OutlineInputBorder(),
                  labelText: 'name of the hospital',
                  prefixIcon: Icon(Icons.calendar_month),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  border: OutlineInputBorder(),
                  labelText: 'provide feedback',
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Button to navigate to mainPage when credentials are correct
              ElevatedButton(
                child: const Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                        '${Provider.of<User>(context, listen: false).name} your reniew is received!'),
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
