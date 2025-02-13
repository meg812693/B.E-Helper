import 'package:flutter/material.dart';
import 'package:helper/signuppage.dart';
import 'package:helper/application.dart';

//!loginpage

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Welcome to B E Helpers',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                  ),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in\n',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController, //it takes user name
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  labelStyle: TextStyle(color: Color(0xfffaf9fd)),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Color(0xffffffff)),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 15),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    if (nameController.text.isNotEmpty &&
                        passwordController.text.isNotEmpty) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          // Builder for the nextpage
                          // class's constructor.
                          builder: (context) =>
                              application(nameController.text),
                        ),
                      );
                    }
                  },
                )),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: Row(
                children: [
                  const Text('Forgot Password?',
                      style: TextStyle(color: Colors.blue)),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                const Text(
                  'Do not have account?',
                  style: TextStyle(fontSize: 15, color: Colors.redAccent),
                ),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                  onPressed: () {
                    //signup screen
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => Signuppage()));
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
    // final String name = nameController.text;
  }
}
