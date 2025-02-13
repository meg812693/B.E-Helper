import 'package:flutter/material.dart';
import 'package:helper/loginpage.dart';

void main() {
  runApp(MaterialApp(
    title: "behelper",
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Dark background
          Container(
            color: Colors.black.withOpacity(0.7), // Adjust opacity for darkness
          ),
          // Image with opacity
          Positioned.fill(
            child: Opacity(
              opacity: 0.35, // Adjust opacity as needed
              child: Image.asset(
                "assets/images/be.png", // Path to your image asset
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Your login page widget
          loginpage(),
        ],
      ),
    ),
  ));
}
