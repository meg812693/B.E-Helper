import 'package:flutter/material.dart';
import 'package:helper/drawer.dart';
import 'package:helper/eresource.dart';

//! application widget
class application extends StatefulWidget {
  String? user_name;
  application(this.user_name);
  @override
  State<application> createState() => _applicationState(user_name);
}

class _applicationState extends State<application>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  var mtext = "";
  String? user_name;

  _applicationState(this.user_name);

  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    //TODO: implement initstate
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text(
            "B E Helper",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.purpleAccent),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 55, 42, 42),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.home), //!Home
              color: Colors.white,
              onPressed: () {
                setState(() {});
                mtext = "home";
              }),
          IconButton(
              icon: Icon(Icons.help_outline), //!Help
              color: Colors.white,
              onPressed: () {
                setState(() {});
                mtext = "contact: xxxxxxxxx9";
              }),
        ],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: mainmenu(userName: user_name),

      //! body of the app

      body: Material(
        color: Colors.black12,
        child: Center(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to " + (user_name ?? "BE Helper") + "!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 17, 16, 16),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "BeHelpers is your ultimate companion on the journey of engineering education. We are dedicated to helping engineering students succeed in life by providing valuable resources, tools, and support.",
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 17, 16, 16),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "What BeHelpers offers:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 17, 16, 16),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "- Virtual Lab: Explore interactive virtual experiments and enhance your practical knowledge.",
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 17, 16, 16),
                  ),
                ),
                Text(
                  "- e-Resource: Access a wide range of study materials, notes, and resources.",
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 17, 16, 16),
                  ),
                ),
                Text(
                  "- SGPA and CGPA Calculator: Easily calculate your semester and cumulative grade points.",
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 17, 16, 16),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Add any action you want when the button is pressed
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Drawer2Page()));
                  },
                  child: Text('Get Started'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
