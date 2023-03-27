import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loginusing_sharedpref/Utils/SharedPrefrence.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    checkLogin();
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.brown.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Future<void> checkLogin() async {
    SharedPrefDemo spref = SharedPrefDemo();
    Map map = await spref.readPref();
    if (map['isLogin'] == true) {
      Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(context, 'home'),
      );
    } else {
      Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(context, 'login'),
      );
    }
  }
}
