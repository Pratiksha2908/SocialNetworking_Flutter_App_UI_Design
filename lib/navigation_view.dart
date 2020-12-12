import 'dart:io';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:friend_circle_ui/chat_page.dart';
import 'package:friend_circle_ui/noti_page.dart';
import 'package:friend_circle_ui/search_page.dart';
import 'home_page.dart';
import 'profile_view.dart';
import 'package:image_picker/image_picker.dart';

class Home extends StatefulWidget {
  static const String id = 'home';
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {

  File _image;
  final picker = ImagePicker();

  Future galleryImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickedFile.path);
    });
  }

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    SearchPage(),
    NotificationPage(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          heroTag: null,
          backgroundColor: Colors.blue.shade700,
          onPressed: galleryImage,
          child: Icon(Icons.add, color: Colors.white, size: 40.0,),
          elevation: 10.0,
        ),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 6.0,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              onTap: onTabTapped,
              currentIndex: _currentIndex,
              unselectedItemColor: Colors.blue.shade700,
              selectedItemColor: Color(0xff000080),
              items: [
                BottomNavigationBarItem(
                  icon: new Icon(Icons.home, size: 30.0,),
                ),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.search, size: 30.0,),
                ),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.notifications_none, size: 30.0,),
                ),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.account_circle, size: 30.0,),
                ),
              ]
          ),
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}