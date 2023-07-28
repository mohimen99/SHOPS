import 'package:appfuture/components/homeWidget.dart';
import 'package:appfuture/Home/shopsPage.dart';
import 'package:appfuture/auth/signUpPage/signup.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class loginWidget extends StatelessWidget {
  loginWidget({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('images/shoppinggo1.png'),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: 'User Name Or Email',
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextFormField(
                    autofocus: false,
                    obscureText: _obscureText,
                    keyboardType: TextInputType.text,
                    controller: passwordController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      hintText: 'Password',
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          _obscureText = !_obscureText;
                        },
                        child: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          semanticLabel:
                              _obscureText ? 'show password' : 'hide password',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  // decoration: BoxDecoration(boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black,
                  //     blurRadius: 25,
                  //   )
                  // ]),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // elevation: 50,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.all(15),
                      fixedSize: Size(200, 55),
                    ),
                    onLongPress: () {
                      print("you press me too long");
                    },
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => shopsPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Login",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
                  ),
                ),
                Row(
                  children: [
                    const Text('Does not have account?'),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const signup_screen(),
                          ),
                        );
                      },
                      child: Text(
                        "Signup",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 22),
                      ),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
