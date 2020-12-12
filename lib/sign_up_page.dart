import 'package:flutter/material.dart';
import 'package:friend_circle_ui/home_page.dart';
import 'constants.dart';
import 'navigation_view.dart';

class SignUpPage extends StatefulWidget {
  static const String id = 'sign_up_page';
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Hero(
                  tag: 'logo',
                  child: Container(
                    height: 300.0,
                    child: Image.asset('images/friends.png'),
                  ),
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('E-Mail', style: TextStyle(color: Color(0xff000080), fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, left: 20.0, right: 20.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {
                        email = value;
                      },
                      decoration:
                      kTextFieldDecoration.copyWith(hintText: 'youremail@example.com', hintStyle: TextStyle(color: Colors.blue.shade900)),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('Password', style: TextStyle(color: Color(0xff000080), fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: TextField(
                      obscureText: true,
                      onChanged: (value) {
                        password = value;
                      },
                      decoration: kTextFieldDecoration.copyWith(
                          hintText: 'yourpassword', hintStyle: TextStyle(color: Colors.blue.shade900)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0, bottom: 24.0, left: 8.0, right: 8.0),
              child: FlatButton(
                onPressed: (){
                  Navigator.pushNamed(context, Home.id);
                },
                child: Container(
                  width: 200,
                  height: 50,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
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
            Container(
              width: 320.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Text(
                    'Sign in >',
                    style: TextStyle(
                        color: Color(0xff000080),
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
