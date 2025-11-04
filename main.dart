import 'package:flutter/material.dart';
import 'page_profile.dart';
import 'page_search.dart';
import 'page_settings.dart';
import 'page_home.dart';

int currentBottomTab = 0;

final List<Widget> bottomNavScreens = [
  PageHome(),
  PageSearch(),
  PageSettings(),
  PageProfile()
];

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Demo11a(),
    );
  }
}

class Demo11a extends StatefulWidget {
  const Demo11a({super.key});

  @override
  State<Demo11a> createState() => _Demo11aState();
}

class _Demo11aState extends State<Demo11a> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: Text("Week 11B Demo"),
        ),
        body: bottomNavScreens[currentBottomTab],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: currentBottomTab,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", backgroundColor: Colors.green),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search", backgroundColor: Colors.yellow),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings", backgroundColor: Colors.orange),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile", backgroundColor: Colors.brown)
          ],
          onTap: (value) {
            setState(() {
              currentBottomTab = value;
            });
          },
        ),
    );
  }
}
