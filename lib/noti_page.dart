import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  static const String id = 'notification_page';
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('images/friends.png'),
        actions: [
          IconButton(
              onPressed: null,
              alignment: Alignment.centerRight,
              icon: Icon(Icons.chat, color: Color(0xff000080),)
          ),
        ],
        title: Center(child: Text("Notifications", style: TextStyle(color: Color(0xff000080), fontWeight: FontWeight.bold, fontSize: 18.0, fontFamily: "MontserratAlternates"),)),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0, bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage("images/maleprofile.png"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('xyz started following you.', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue.shade700),),
                        Text('20 minutes before.', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue.shade200),)
                      ],
                    ),
                    Container(
                      width: 90.0,
                      height: 40.0,
                      child: Card(
                        child: FlatButton(
                          onPressed: null,
                          child: Text(
                              'Accept',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        color: Colors.blue.shade200,
                      ),
                    ),
                    Icon(Icons.delete, color: Colors.red,)
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
                child: Divider(
                  color: Colors.blue.shade300,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage("images/maleprofile.png"),
                    ),
                    Text('Friend 2 liked your post', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue.shade700),),
                    Image.network('https://wallpapercave.com/wp/wp3473585.jpg', width: 60.0, height: 60.0,),
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
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage("images/femaleprofile.png"),
                    ),
                    Text('Friend 3 liked your post', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue.shade700),),
                    Image.network('https://wallpapercave.com/wp/wp3473585.jpg', width: 60.0, height: 60.0,),
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
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage("images/maleprofile.png"),
                    ),
                    Text('Friend 4 liked your post', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue.shade700),),
                    Image.network('https://wallpapercave.com/wp/wp3473585.jpg', width: 60.0, height: 60.0,),
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
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage("images/maleprofile.png"),
                    ),
                    Text('Friend 4 liked your post', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue.shade700),),
                    Image.network('https://i.pinimg.com/236x/09/49/2a/09492a5f6fdbf88eab9d4c40db68d72b--dew-drops-rain-drops.jpg', width: 60.0, height: 60.0,),
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
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage("images/femaleprofile.png"),
                    ),
                    Text('Friend 3 liked your post', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue.shade700),),
                    Image.network('https://i.pinimg.com/originals/21/3e/ca/213ecafc4897529562abbce18fcaddd7.jpg', width: 60.0, height: 60.0,),
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
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage("images/femaleprofile.png"),
                    ),
                    Text('Friend 1 liked your post', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue.shade700),),
                    Image.network('https://wallpapercave.com/wp/wp3021097.jpg', width: 60.0, height: 60.0,),
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
