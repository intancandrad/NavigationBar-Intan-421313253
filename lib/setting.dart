import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        children: <Widget>[
          new ListTile(
            leading: new Icon(Icons.person),
            title: new Text("Account Intan"),
          ),
          new ListTile(
            leading: new Icon(Icons.notification_add),
            title: new Text("Notification"),
          ),
          new ListTile(
            leading: new Icon(Icons.privacy_tip_outlined),
            title: new Text("Privacy"),
          ),
          new ListTile(
            leading: new Icon(Icons.security),
            title: new Text("Security"),
          ),
          new ListTile(
            leading: new Icon(Icons.help),
            title: new Text("Help"),
          ),
          new ListTile(
            leading: new Icon(Icons.info),
            title: new Text("About Intan"),
          ),
          new ListTile(
            leading: new Icon(Icons.logout),
            title: new Text("Logout"),
          ),
        ],
      ),
    );
  }
}
