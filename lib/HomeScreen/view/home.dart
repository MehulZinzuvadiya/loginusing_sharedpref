import 'package:flutter/material.dart';
import 'package:loginusing_sharedpref/Utils/SharedPrefrence.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Welcome Back!!!",
              style: TextStyle(
                color: Colors.green,
                fontSize: 50,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              )),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
              onPressed: () {

              SharedPrefDemo spref=SharedPrefDemo();
              spref.clearPref();
              Navigator.pushReplacementNamed(context, 'login');

              }, child: Text("Log Out",))
        ],
      ),
    ));
  }
}
