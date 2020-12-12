import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:friend_circle_ui/sign_in_page.dart';
import 'package:friend_circle_ui/sign_up_page.dart';
import 'constants.dart';

class WelcomePage extends StatefulWidget {
  static const String id = 'welcome_page';
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation = ColorTween(begin: Colors.red, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Column(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/friends.png'),
                    height: 200.0,
                  ),
                ),
                ColorizeAnimatedTextKit(
                  text: ['FriendCircle'],
                  textStyle: TextStyle(
                    color: Color(0xff000080),
                    fontSize: 30.0,
                    fontFamily: "Horizon",
                  ),
                  colors: [
                    Colors.red,
                    Colors.yellow,
                    Colors.green,
                    Colors.blue,
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: FlatButton(
                onPressed: (){
                  Navigator.pushNamed(context, SignInPage.id);
                },
                child: Container(
                  width: 300,
                  height: 50,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Colors.black,
                          Color(0xff000080),
                        ],
                      )
                  ),
                  child: Text(
                    'Sign In',
                    style: kSendButtonTextStyle,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: FlatButton(
                onPressed: (){
                  Navigator.pushNamed(context, SignUpPage.id);
                },
                child: Container(
                  width: 300,
                  height: 50,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Colors.black,
                          Color(0xff000080),
                        ],
                      )
                  ),
                  child: Text(
                    'Sign Up',
                    style: kSendButtonTextStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

