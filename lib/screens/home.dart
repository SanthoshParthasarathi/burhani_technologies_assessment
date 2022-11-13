import 'package:bh_task_flutter/screens/profilescreen.dart';
import 'package:flutter/material.dart';
import 'categoryscreen.dart';
import 'homescreen.dart';
import 'notificationscreen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pageOptions = [
    HomeScreen(),
    CategoryScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
        child: Container(
          child: BottomNavigationBar(
              showUnselectedLabels: true,
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.black,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.category_rounded), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
              ],
              type: BottomNavigationBarType.fixed, // Fixed
              backgroundColor: Colors.teal.shade600,
              currentIndex: _selectedIndex,
              iconSize: 34,
              onTap: _onItemTapped,
              elevation: 5),
        ),
      ),
      body: _pageOptions[_selectedIndex],
    );
  }
}
