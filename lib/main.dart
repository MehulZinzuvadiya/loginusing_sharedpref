import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginusing_sharedpref/HomeScreen/view/home.dart';

import 'LoginScreen/view/loginScreen.dart';
import 'SignUp/view/signUpScreen.dart';
import 'Splash/view/splashScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // initialRoute: 'signUp',
    routes: {
      '/': (context) => SplashScreen(),
      'login': (context) => LoginScreen(),
      'signUp': (context) => SignUpScreen(),
      'home': (context) => HomeScreen(),
    },
  ));
}
