import 'package:appfuture/components/homeWidget.dart';
import 'package:appfuture/screens/login.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class signup_widget extends StatelessWidget {
  signup_widget({Key? key}) : super(key: key);

  String nationality = "";
  var items = ["Jordanian", "palestinian", "syrian", "lebanese", "turkish"];
  @required
  TextEditingController firstName = TextEditingController();
  @required
  TextEditingController middleName = TextEditingController();
  @required
  TextEditingController lastName = TextEditingController();
  @required
  TextEditingController email = TextEditingController();
  @required
  TextEditingController password = TextEditingController();
  @required
  TextEditingController confirmPassword = TextEditingController();
  @required
  TextEditingController phoneNumber = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Sign Up",
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          brightness: Brightness.light,
          backgroundColor: Color.fromARGB(255, 39, 155, 232),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => homeWidget(),
                  ),
                );
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.black,
              )),
        ),
        drawer: Drawer(),
        body: SingleChildScrollView(
          child: Column(
            key: _formKey,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  controller: firstName,
                  decoration: InputDecoration(
                    hintText: 'First Name',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    prefixIcon: Icon(
                      Icons.abc,
                      color: Color(0xff5ac18e),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: middleName,
                  decoration: InputDecoration(
                    hintText: 'Middle Name',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    prefixIcon: Icon(
                      Icons.abc,
                      color: Color(0xff5ac18e),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: lastName,
                  decoration: InputDecoration(
                    hintText: 'Last Name',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    prefixIcon: Icon(
                      Icons.abc,
                      color: Color(0xff5ac18e),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color(0xff5ac18e),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    prefixIcon: Icon(
                      Icons.password,
                      color: Color(0xff5ac18e),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: confirmPassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    prefixIcon: Icon(
                      Icons.password,
                      color: Color(0xff5ac18e),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: phoneNumber,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    prefixIcon: Icon(
                      Icons.phone_android,
                      color: Color(0xff5ac18e),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              // Container(
              //   child: Row(
              //     children: [
              //       Text(
              //         "Nationality",
              //         style: TextStyle(
              //           fontSize: 20,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //       SizedBox(width: 100),
              //       DropdownButton(
              //           value: nationality,
              //           hint: Text("Choose Your Nationality"),
              //           icon: Icon(Icons.flag),
              //           items: items.map((String items) {
              //             return DropdownMenuItem(
              //               value: items,
              //               child: Text(items),
              //             );
              //           }).toList(),
              //           onChanged: (e) {
              //             setState(() {
              //               nationality = e.toString();
              //             });
              //           }),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  // BoxShadow(
                  //   color: Colors.black,
                  //   blurRadius: 25,
                  // )
                ]),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 82, 82),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    padding: EdgeInsets.all(15),
                    fixedSize: Size(200, 50),
                  ),
                  onLongPress: () {
                    print("you press me too long");
                  },
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => login_Screen(),
                      ),
                    );
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Row(
                children: [
                  const Text('Already have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => login_Screen(),
                        ),
                      );
                    },
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
                    ),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
