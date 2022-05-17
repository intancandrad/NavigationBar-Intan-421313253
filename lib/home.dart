import 'package:flutter/material.dart';
import 'package:navbar/setting.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  String title = "Pages";
  List<Widget> itemPages = <Widget>[
    Text('Bagian Home'),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: const Icon(Icons.arrow_back),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text(title),
        actions: [Icon(Icons.menu), Icon(Icons.favorite)],
      ),
      body: Center(child: itemPages[selectedIndex]),

 body: new ListView(
        children: <Widget>[
        new ListTile(
          leading: new Icon(Icons.star),
          title: new Text("Libra"),
        ),
        new ListTile(
          leading: new Icon(Icons.star_border),
          title: new Text("Aquarius"),
        ),
        new ListTile(
          leading: new Icon(Icons.star),
          title: new Text("Taurus"),
        ),
        new ListTile(
          leading: new Icon(Icons.star_border),
          title: new Text("Pisces"),
        ),
        new ListTile(
          leading: new Icon(Icons.star),
          title: new Text("Virgo"),
        ),
        new ListTile(
          leading: new Icon(Icons.star_border),
          title: new Text("Gemini"),
        ),
        new ListTile(
          leading: new Icon(Icons.star),
          title: new Text("Cancer"),
        ),
      ],

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
   ),