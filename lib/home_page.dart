import 'dart:io';
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:friend_circle_ui/chat_page.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {

  File _image;
  final picker = ImagePicker();

  Future galleryImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickedFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: galleryImage,
            icon: Icon(Icons.camera_alt, color: Colors.blue.shade700,size: 30.0,),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, ChatPage.id);
                },
                alignment: Alignment.centerRight,
                icon: Icon(Icons.near_me, color: Colors.blue.shade700, size: 30.0,)
            ),
          ],
          title: Center(
              child: Text(
                "FriendCircle",
                  style: TextStyle(
                    color: Color(0xff000080),
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontFamily: "Horizon",
                  ),
              ),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 35.0,
                                  backgroundImage: AssetImage("images/profile.png"),
                                ),
                                Text('Your Story', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff000080)),)
                              ],
                            ),
                          ),
                          SizedBox(width: 10.0,),
                          Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 35.0,
                                  backgroundImage: AssetImage("images/femaleprofile.png"),
                                ),
                                Text('Friend 1', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff000080)),)
                              ],
                            ),
                          ),
                          SizedBox(width: 10.0,),
                          Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 35.0,
                                  backgroundImage: AssetImage("images/maleprofile.png"),
                                ),
                                Text('Friend 2', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff000080)),)
                              ],
                            ),
                          ),
                          SizedBox(width: 10.0,),
                          Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 35.0,
                                  backgroundImage: AssetImage("images/femaleprofile.png"),
                                ),
                                Text('Friend 3', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff000080)),)
                              ],
                            ),
                          ),
                          SizedBox(width: 10.0,),
                          Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 35.0,
                                  backgroundImage: AssetImage("images/maleprofile.png"),
                                ),
                                Text('Friend 4', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff000080)),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  child: Divider(
                    color: Colors.blue.shade200,
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: CircleAvatar(
                              radius: 25.0,
                              backgroundImage: AssetImage("images/maleprofile.png"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text('Friend 2', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff000080)),),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network('https://wallpapercave.com/wp/e8xnTpf.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: null,
                              icon: Icon(Icons.favorite_border, color: Color(0xff000080),size: 30.0,),
                            ),
                            IconButton(
                              onPressed: null,
                              icon: Icon(Icons.comment, color: Color(0xff000080),size: 30.0,),
                            ),
                            IconButton(
                              onPressed: null,
                              icon: Icon(Icons.send, color: Color(0xff000080),size: 30.0,),
                            ),
                            IconButton(
                                onPressed: null,
                                icon: Icon(Icons.bookmark_border, color: Color(0xff000080),size: 30.0,),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text('300 Likes', style: TextStyle(color: Colors.blue.shade300, fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text('December 11', style: TextStyle(color: Colors.blue.shade200, fontWeight: FontWeight.bold),),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  child: Divider(
                    color: Colors.blue.shade100,
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: CircleAvatar(
                              radius: 25.0,
                              backgroundImage: AssetImage("images/femaleprofile.png"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text('Friend 3', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff000080)),),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network('https://i.pinimg.com/originals/2d/95/e5/2d95e5886fc4c65a6778b5fee94a7d59.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: null,
                              icon: Icon(Icons.favorite_border, color: Color(0xff000080),size: 30.0,),
                            ),
                            IconButton(
                              onPressed: null,
                              icon: Icon(Icons.comment, color: Color(0xff000080),size: 30.0,),
                            ),
                            IconButton(
                              onPressed: null,
                              icon: Icon(Icons.send, color: Color(0xff000080),size: 30.0,),
                            ),
                            IconButton(
                              onPressed: null,
                              padding: EdgeInsets.only(left: 150.0),
                              icon: Icon(Icons.bookmark_border, color: Color(0xff000080),size: 30.0,),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text('260 Likes', style: TextStyle(color: Colors.blue.shade300, fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text('December 6', style: TextStyle(color: Colors.blue.shade200, fontWeight: FontWeight.bold),),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }

  @override
  void initState() {
    super.initState();
  }
}