import 'package:flutter/material.dart';
import 'package:google_news_ui_clone/Dlin/s4.dart';
import 'package:google_news_ui_clone/Ravand/main_screen.dart';
import 'package:google_news_ui_clone/amed/s3.dart';
import 'package:google_news_ui_clone/nour/Newsstand.dart';

class bottomNav extends StatefulWidget {
  const bottomNav({super.key});

  @override
  State<bottomNav> createState() => _bottomNavState();
}

class _bottomNavState extends State<bottomNav> {
  int _currentIndex = 0; //for BottomNav index
  final screens = [Foryou(), Headlines(), Following(), Newsstand()];
  //to have multiple screens when navigating on BottomNav

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        //to keep the screens alive when navigating between them,
        //to not lose data within the screen when changing it
        index: _currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, //set index
        type: BottomNavigationBarType.fixed,
        //to have more than 3 options on BottomNav
        onTap: (newIndex) {
          setState(() {
            _currentIndex = newIndex;
            //update index when changing options on BottomNav
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'For you',
            icon: Icon(Icons.assistant),
          ),
          BottomNavigationBarItem(
            label: 'Headlines',
            icon: Icon(Icons.language),
          ),
          BottomNavigationBarItem(
            label: 'Following',
            icon: Icon(Icons.star_border_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Newsstand',
            icon: Icon(Icons.bar_chart_rounded),
          ),
        ],
      ),
    );
  }
}
