import 'package:flutter/material.dart';
//import 'package:flutter_application_stateless_stateful/pages/mainPage.dart';

class User with ChangeNotifier {
  String _name = ' ';
  String _email = ' ';
  String _password = ' ';
  String _DOB = ' ';
  String _IDNo = ' ';
  String _ContactNo = ' ';

  String get name => _name;

  set name(String name) {
    _name = name;
    notifyListeners();
  }

  String get email => _email;

  set email(String email) {
    _email = email;
    notifyListeners();
  }

  String get password => _password;

  set password(String password) {
    _password = password;
    notifyListeners();
  }

  String get DOB => _DOB;

  set DOB(String dob) {
    _DOB = DOB;
    notifyListeners();
  }

  String get IDNo => _IDNo;

  set IDNo(String idNo) {
    _IDNo = IDNo;
    notifyListeners();
  }

  String get ContactNo => _ContactNo;

  set ContactNo(String contactNo) {
    _ContactNo = ContactNo;
    notifyListeners();
  }
}
