import 'package:flutter/material.dart';
import 'package:news_app_flutter/screens/bookmark_screen.dart';
import 'package:news_app_flutter/screens/home_screen.dart';
import 'package:news_app_flutter/screens/profile_screen.dart';
import 'package:news_app_flutter/screens/search_screen.dart';
import 'package:news_app_flutter/utils/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

final List<Widget> mainScreens = [
  HomeScreen(),
  SearchScreen(),
  BookMarkScreen(),
  ProfileScreen()
];

final List<BottomNavigationBarItem> bottomNavigationBarItems = [
  BottomNavigationBarItem(
      activeIcon: Image(
        width: BOTTOM_NAVIGATION_ITEM_SIZE,
        height: BOTTOM_NAVIGATION_ITEM_SIZE,
        image: AssetImage("images/home.png"),
      ),
      icon: Image(
        width: BOTTOM_NAVIGATION_ITEM_SIZE,
        height: BOTTOM_NAVIGATION_ITEM_SIZE,
        image: AssetImage("images/home_unselected.png"),
      ),
      title: Text("Home")),
  BottomNavigationBarItem(
      activeIcon: Image(
        width: BOTTOM_NAVIGATION_ITEM_SIZE,
        height: BOTTOM_NAVIGATION_ITEM_SIZE,
        image: AssetImage("images/search.png"),
      ),
      icon: Image(
        width: BOTTOM_NAVIGATION_ITEM_SIZE,
        height: BOTTOM_NAVIGATION_ITEM_SIZE,
        image: AssetImage("images/search_unselected.png"),
      ),
      title: Text("Search")),
  BottomNavigationBarItem(
      icon: Image(
        width: BOTTOM_NAVIGATION_ITEM_SIZE,
        height: BOTTOM_NAVIGATION_ITEM_SIZE,
        image: AssetImage("images/bookmark_unselected.png"),
      ),
      activeIcon: Image(
        width: BOTTOM_NAVIGATION_ITEM_SIZE,
        height: BOTTOM_NAVIGATION_ITEM_SIZE,
        image: AssetImage("images/bookmark.png"),
      ),
      title: Text("Bookmark")),
  BottomNavigationBarItem(
      activeIcon: Image(
        width: BOTTOM_NAVIGATION_ITEM_SIZE,
        height: BOTTOM_NAVIGATION_ITEM_SIZE,
        image: AssetImage("images/profile.png"),
      ),
      icon: Image(
        width: BOTTOM_NAVIGATION_ITEM_SIZE,
        height: BOTTOM_NAVIGATION_ITEM_SIZE,
        image: AssetImage("images/profile_unselected.png"),
      ),
      title: Text("Profile"))
];

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mainScreens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavigationBarItems,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
