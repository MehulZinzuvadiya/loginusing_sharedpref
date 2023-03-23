import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LoginScreen/view/loginScreen.dart';
import 'SignUp/view/signUpScreen.dart';
import 'ab.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // initialRoute: 'signUp',
    routes: {
      '/': (context) => LoginScreen(),
      'signUp': (context) => SignUpScreen(),
    },
  ));
}
