import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

// The state class for the login screen.
class _LoginPageState extends State<LoginPage> {
  final emailCotroller = TextEditingController();
  final passwordCotroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  var isLoading = false;

  void _login() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
    // Navigator.of(context).pushNamed(RouteManager.mainpage);
  }

  // Build the UI for the login screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hospital Management Mobile Application"),
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.filter_vintage),
      ),

      //body
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
                'LogIn Page',
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
              const SizedBox(
                height: 40,
              ),

              // Text fields for email and password.
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailCotroller,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Email';
                  }
                  bool emailValid = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value);
                  if (!emailValid) {
                    return "Enter a valid email";
                  }
                  return null;
                },
              ),
              //box styling
              const SizedBox(
                height: 15,
              ),
              //text input
              TextFormField(
                maxLength: 8,
                keyboardType: TextInputType.text,
                controller: passwordCotroller,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Your password";
                  } else if (!RegExp(r'[@]').hasMatch(value)) {
                    return 'Enter a valid password (8 characters, with @ smybol)';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 15,
              ),

              // Button to navigate to mainPage when credentials are correct
              ElevatedButton(
                child: const Text(
                  "LogIn",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                onPressed: () {
                  _login();
                  Navigator.of(context).pushNamed(RouteManager.mainPage);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
