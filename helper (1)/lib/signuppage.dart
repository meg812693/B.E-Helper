import 'package:flutter/material.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({Key? key}) : super(key: key);

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background with transparent color
          Container(
            color: Color.fromARGB(255, 21, 20, 20).withOpacity(0.9),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          // Overlay image
          Positioned.fill(
            child: Opacity(
              opacity: 0.35, // Adjust opacity as needed
              child: Image.asset(
                "assets/images/be.png", // Path to your image asset
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Signup content
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 202, 195, 195),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 202, 195, 195),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 202, 195, 195),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Add sign-up logic here
                    Navigator.pop(context);
                  },
                  child: Text("Sign Up"),
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    const Text(
                      'Already have an account?',
                      style: TextStyle(fontSize: 15, color: Colors.redAccent),
                    ),
                    TextButton(
                      child: const Text(
                        'Sign in',
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      ),
                      onPressed: () {
                        // Navigate to sign-in screen
                        Navigator.pop(context);
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
