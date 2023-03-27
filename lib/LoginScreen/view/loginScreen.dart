import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginusing_sharedpref/Utils/SharedPrefrence.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController user_email = TextEditingController();
  TextEditingController user_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SIGN IN",
                    style: GoogleFonts.poppins(
                      color: Color(0xff3b1704),
                      fontSize: 50,
                    ),
                  ),
                  TextField(
                    controller: user_email,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      filled: true,
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.brown.shade700,
                      ),
                      fillColor: Colors.white.withOpacity(0.8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: user_password,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.brown.shade700,
                      ),
                      fillColor: Colors.white.withOpacity(0.8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        String userEmail = user_email.text;
                        String userPassword = user_password.text;

                        SharedPrefDemo pref = SharedPrefDemo();
                        Map m1 = await pref.readPref();
                        print("${m1['e1']}=${m1['p1']}");

                        //Compare Data of user and pref

                        if (userEmail == m1['e1'] && userPassword == m1['p1']) {
                          pref.createPref(user_email.text, user_password.text, true);
                          Navigator.pushNamed(context, 'home');
                        } else if (userEmail != m1['e1']) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Invalid email!!")));
                        } else if (userPassword != m1['p1']) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Invalid Password!")));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Invalid Credentials")));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown.shade500,
                      ),
                      child: const Text(
                        "LOGIN",
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'signUp');
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.deepPurple.shade700,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
