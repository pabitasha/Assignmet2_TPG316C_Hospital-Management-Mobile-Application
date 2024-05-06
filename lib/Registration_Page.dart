import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RegistrationPage(),
    );
  }
}

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RegistrationPageState createState() => _RegistrationPageState();
}

// The state class for the login screen.
class _RegistrationPageState extends State<RegistrationPage> {
  final nameCotroller = TextEditingController();
  final emailCotroller = TextEditingController();
  final passwordCotroller = TextEditingController();
  final DOBCotroller = TextEditingController();
  final IDNumCotroller = TextEditingController();
  final COntactNoCotroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  var isLoading = false;

  void _login() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
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
                'New Patient Registration',
                style: TextStyle(fontSize: 40, color: Colors.black54),
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: nameCotroller,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
              // Text fields for email and password.
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailCotroller,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  border: OutlineInputBorder(),
                  labelText: 'myname@gmail.com',
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

              TextFormField(
                keyboardType: TextInputType.datetime,
                controller: DOBCotroller,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  border: OutlineInputBorder(),
                  labelText: 'MM-DD-YYYY',
                  prefixIcon: Icon(Icons.calendar_month),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              TextFormField(
                keyboardType: TextInputType.text,
                controller: IDNumCotroller,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  border: OutlineInputBorder(),
                  labelText: '(000) 000-0000',
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Button to navigate to mainPage when credentials are correct
              ElevatedButton(
                child: const Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                onPressed: () {
                  _login();
                  Navigator.of(context).pushNamed(RouteManager.loginPage);
                },
              ),
              const Text('Already have account? Login'),
            ],
          ),
        ),
      ),
    );
  }
}
