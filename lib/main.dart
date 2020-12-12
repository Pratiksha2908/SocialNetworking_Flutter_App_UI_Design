import 'package:flutter/material.dart';
import 'package:friend_circle_ui/chat_page.dart';
import 'package:friend_circle_ui/home_page.dart';
import 'package:friend_circle_ui/navigation_view.dart';
import 'package:friend_circle_ui/noti_page.dart';
import 'package:friend_circle_ui/profile_view.dart';
import 'package:friend_circle_ui/search_page.dart';
import 'package:friend_circle_ui/setting_screen.dart';
import 'package:friend_circle_ui/sign_in_page.dart';
import 'package:friend_circle_ui/sign_up_page.dart';
import 'package:friend_circle_ui/welcome_page.dart';

void main() {
  runApp(FriendCircle());
}

class FriendCircle extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomePage.id,
      routes: {
        WelcomePage.id: (context) => WelcomePage(),
        SignInPage.id: (context) => SignInPage(),
        SignUpPage.id: (context) => SignUpPage(),
        HomePage.id: (context) => HomePage(),
        ProfileView.id: (context) => ProfileView(),
        SearchPage.id: (context) => SearchPage(),
        NotificationPage.id: (context) => NotificationPage(),
        Home.id: (context) => Home(),
        ChatPage.id: (context) => ChatPage(),
        SettingScreen.id: (context) => SettingScreen(),
      },
    );
  }
}
