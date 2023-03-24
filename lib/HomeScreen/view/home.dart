import 'package:flutter/material.dart';

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
      body: Center(
        child: Text("Welcome Back!!!",
            style: TextStyle(
              color: Colors.green,
              fontSize: 50,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            )),
      ),
    ));
  }
}
