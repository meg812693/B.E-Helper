import 'package:flutter/material.dart';
import 'package:helper/notes.dart';
import 'package:helper/ppt.dart';
import 'package:helper/QuestionPaper.dart';
import 'package:helper/resume.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webview_flutter/webview_flutter.dart';
//! e-Resource

class Drawer2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<void> _launchUrl(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Error in Loading...';
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('E Resource'),
      ),
      body: Container(
        color: Colors.black.withOpacity(0.5),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 16.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // ElevatedButton styles
                    primary: Color(0xff0b8a0b),
                    padding: EdgeInsets.fromLTRB(
                        110, 50, 110, 50), // Some padding example
                    shape: RoundedRectangleBorder(
                      // Border
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Notes(
                                  url: "https://vtuupdates.com/vtu-notes/",
                                )));
                  },
                  child: Text(
                    'Get Notes',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 17, 16, 16),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // ElevatedButton styles
                    primary: Color(0xffff5e00),
                    padding: EdgeInsets.fromLTRB(
                        125, 50, 125, 50), // Some padding example
                    shape: RoundedRectangleBorder(
                      // Border
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Color(0xff0be641)),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PPT(
                                  url: "https://slidesaver.app/",
                                )));

                    // Add any action you want when the button is pressed
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Notes()));
                  },
                  child: Text(
                    'Get PPT',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 17, 16, 16),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // ElevatedButton styles
                    primary: Color(0xff5900ff),
                    padding: EdgeInsets.fromLTRB(
                        100, 50, 100, 50), // Some padding example
                    shape: RoundedRectangleBorder(
                      // Border
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red),
                    ),
                  ),
                  onPressed: () {
                    // final url =
                    //     "https://www.vturesource.com/vtu-question-papers/";

                    // if (await canLaunch(url)) {
                    //   await launch(
                    //     url,
                    //     enableJavaScript: true,
                    //     forceWebView: true,
                    //   );
                    // }
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QuestionPaper(
                                  url:
                                      "https://www.vturesource.com/vtu-question-papers/",
                                )));

                    // Add any action you want when the button is pressed
                  },
                  child: Text(
                    'Qustion Paper',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 17, 16, 16),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // ElevatedButton styles
                    primary: Color(0xfffffc00),
                    padding: EdgeInsets.fromLTRB(
                        110, 50, 110, 50), // Some padding example
                    shape: RoundedRectangleBorder(
                      // Border
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => resume(
                                  url:
                                      "https://www.resume-now.com/build-resume/choose-template",
                                )));
                  },
                  child: Text(
                    'Resume Builder',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 17, 16, 16),
                    ),
                  ),
                ),
                SizedBox(height: 300),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContainer(String label, Color color) {
    return Container(
      width: 300,
      height: 200,
      color: color,
      child: Center(
        child: Text(
          label,
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
    );
  }
}
