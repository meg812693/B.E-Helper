import 'package:flutter/material.dart';

//! setting page

class Settingpage extends StatefulWidget {
  const Settingpage({super.key});

  @override
  State<Settingpage> createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 105, 98, 98),
        appBar: AppBar(title: Text("Settings")),
        body: Center(
          child: Text("Under development"),
        ));
  }
}
