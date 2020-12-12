import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  static const String id = 'chat_page';
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('images/friends.png'),
        actions: [
          IconButton(
              onPressed: null,
              alignment: Alignment.centerRight,
              icon: Icon(Icons.more_vert, color: Color(0xff000080),)
          ),
        ],
        title: Center(child: Text("Chats", style: TextStyle(color: Color(0xff000080), fontWeight: FontWeight.bold, fontSize: 18.0, fontFamily: "MontserratAlternates"),)),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 12.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage("images/maleprofile.png"),
                    ),
                    SizedBox(width: 15.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Friend 2', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue.shade700),),
                        Text('Active 2 hours ago', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue.shade200),)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
                child: Divider(
                  color: Colors.blue.shade100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 12.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage("images/femaleprofile.png"),
                    ),
                    SizedBox(width: 15.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Friend 1', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue.shade700),),
                        Text('Active 22 minutes ago', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue.shade200),)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
                child: Divider(
                  color: Colors.blue.shade100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 12.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage("images/femaleprofile.png"),
                    ),
                    SizedBox(width: 15.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Friend 3', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue.shade700),),
                        Text('Active 12 hours ago', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue.shade200),)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
                child: Divider(
                  color: Colors.blue.shade100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 12.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage("images/maleprofile.png"),
                    ),
                    SizedBox(width: 15.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Friend 4', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue.shade700),),
                        Text('Active 2 minutes ago', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue.shade200),)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
