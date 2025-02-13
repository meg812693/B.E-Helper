import 'package:flutter/material.dart';
import 'package:helper/eresource.dart';
import 'package:helper/settings.dart';
import 'package:helper/calculator.dart';
import 'package:helper/virtuallab.dart';

//!drawer menu

class mainmenu extends StatefulWidget {
  String? userName;

  mainmenu({super.key, this.userName});

  @override
  State<mainmenu> createState() => _mainmenuState(userName);
}

class _mainmenuState extends State<mainmenu> {
  String? user_name;

  _mainmenuState(this.user_name);

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      backgroundColor: Color.fromARGB(255, 239, 229, 229),
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text(user_name ?? "user name"),
            accountEmail: new Text((user_name ?? "user") + "@gmail.com"),
            currentAccountPicture: new CircleAvatar(
              backgroundColor: Color.fromARGB(255, 193, 159, 159),
              child: new Text("BE"),
            ),
            decoration: new BoxDecoration(color: Colors.blueAccent),
            otherAccountsPictures: [
              new CircleAvatar(
                backgroundColor: Color.fromARGB(255, 70, 109, 103),
                child: Image.asset("assets/images/be.png"),
              )
            ],
          ),
          new ListTile(
            title: new Text("Virtual lab"),
            trailing: new Icon(Icons.laptop_rounded),
            onTap: () => {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => VirtualLabPage()))
            },
          ),
          new ListTile(
            title: new Text("e-Resource"),
            trailing: new Icon(Icons.book),
            onTap: () => {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => Drawer2Page()))
            },
          ),
          new ListTile(
            title: new Text("SGPA AND CGPA Calculator"),
            trailing: new Icon(Icons.calculate),
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => calculateSGPA(
                            url:
                                "https://www.vtulife.in/vtu-sgpa-cgpa-calculator",
                          ))),
            },
          ),
          new ListTile(
            title: new Text("Setting"),
            trailing: new Icon(Icons.settings),
            onTap: () => {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => Settingpage()))
            },
          ),
          new ListTile(
            title: new Text("logout"),
            trailing: new Icon(Icons.logout),
            onTap: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
          )
        ],
      ),
    );
  }
}
