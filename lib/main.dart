import 'package:appfuture/auth/loginpage/login.dart';
import 'package:appfuture/auth/signUpPage/signup.dart';
import 'package:appfuture/shopScreens/shopHome.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: shopHome(),
        theme: ThemeData(
          buttonColor: Color.fromARGB(255, 106, 183, 247),
          primaryColor: Color.fromARGB(255, 0, 0, 0),
          textTheme: TextTheme(
            titleLarge: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        routes: {
          "Login": (context) =>
              login_Screen(), // login page route name and its builder
          "SignUp": (context) =>
              signup_screen(), // SignUp page route name and its builder
          "shopHome": (context) =>
              shopHome(), // shopsPage page route name and its builder
        });
  }
}
