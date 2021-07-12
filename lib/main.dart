import 'package:flutter/material.dart';
import 'package:food_recipe_app/pages/home_pages.dart';
import 'package:food_recipe_app/pages/category_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Recipe App',
      theme: ThemeData(
        primaryColor: Color(0xFF5ea17f),
      ),
      // A widget which will be started on application startup
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  //create list of widgets
  List<Widget> pages = <Widget>[
    HomePages(),
    CategoryPages()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFFfafafa),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.category_outlined), label: 'Category'),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark_outlined), label: 'Saved'),
            BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: 'Profile'),
          ],
          unselectedItemColor: Theme.of(context).primaryColor,
          selectedItemColor: Theme.of(context).primaryColor,
          currentIndex: selectedIndex,
          onTap: onItemTapped),
    ));
  }
}
