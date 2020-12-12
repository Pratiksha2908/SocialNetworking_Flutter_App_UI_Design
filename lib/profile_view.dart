import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:friend_circle_ui/setting_screen.dart';
import 'package:settings_ui/settings_ui.dart';

class ProfileView extends StatefulWidget {
  static const String id = 'profile_view';
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {

  bool showPosts = false;
  bool showTags = false;
  bool showSaved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('images/friends.png'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, SettingScreen.id);
              },
              alignment: Alignment.centerRight,
              icon: Icon(Icons.settings, color: Colors.blue.shade700,)
          ),
        ],
        title: Center(child: Text("Profile", style: TextStyle(color: Color(0xff000080), fontWeight: FontWeight.bold, fontSize: 18.0, fontFamily: "MontserratAlternates"),)),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text('23k', style: TextStyle(color: Colors.blue.shade400, fontSize: 20.0, fontWeight: FontWeight.bold),),
                      Text('Followers', style: TextStyle(color: Colors.blue.shade200, fontSize: 17.0, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(width: 30.0,),
                  Card(
                    color: Colors.blue.shade700,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60.0)),
                    child: Image.asset('images/profile.png', width: 80.0,),
                  ),
                  SizedBox(width: 30.0,),
                  Column(
                    children: [
                      Text('488', style: TextStyle(color: Colors.blue.shade400, fontSize: 20.0, fontWeight: FontWeight.bold),),
                      Text('Followings', style: TextStyle(color: Colors.blue.shade200, fontSize: 17.0, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Pratiksha Shinde', style: TextStyle(color: Colors.blue.shade700, fontWeight: FontWeight.bold, fontSize: 17.0, fontFamily: "MontserratAlternates"),),
                  Text(' | ', style: TextStyle(color: Colors.blue.shade300, fontWeight: FontWeight.bold, fontSize: 17.0),),
                  Text('Nature Lover', style: TextStyle(color: Colors.blue.shade700, fontWeight: FontWeight.bold, fontSize: 17.0, fontFamily: "MontserratAlternates"),),
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                      color: Colors.blue.shade200,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold
                  ),
                  children: <TextSpan>[
                    new TextSpan(text: 'Like to travel and shoot cinematic and b/w photos. Tools - Capture One for Raw. '),
                    new TextSpan(text: '@naturelove29', style: new TextStyle(color: Colors.blue.shade600)),
                  ],
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 62.0,
                          height: 62.0,
                          margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0), side: BorderSide(color: Colors.blue.shade700, width: 2.0)),
                            child: Icon(Icons.add, color: Colors.blue.shade900, size: 25.0,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text('New', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue.shade900),),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 55.0,
                          height: 55.0,
                          margin: EdgeInsets.only(top: 20.0, right: 20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.network('https://i.pinimg.com/564x/7c/83/f3/7c83f36d002ea5985448bd89a5974ba8.jpg'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, right: 15.0),
                          child: Text('Cat', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue.shade700),),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 55.0,
                          height: 55.0,
                          margin: EdgeInsets.only(top: 20.0, right: 20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.network('https://image.dhgate.com/0x0s/f2-albu-g10-M00-C9-BF-rBVaVl6XlJWAJNHrAAVgSqX7_iY753.jpg/green-wallpapers-fantasy-forest-wallpapers.jpg'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, right: 15.0),
                          child: Text('Trees', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue.shade700),),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 55.0,
                          height: 55.0,
                          margin: EdgeInsets.only(top: 20.0, right: 20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.network('https://r1.ilikewallpaper.net/ipad-wallpapers/download/16555/Sunrise-at-sea-ipad-wallpaper-ilikewallpaper_com.jpg'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, right: 15.0),
                          child: Text('Sunrise', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue.shade700),),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 55.0,
                          height: 55.0,
                          margin: EdgeInsets.only(top: 20.0, right: 20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.network('https://infoseccorp.com/wp-content/uploads/2019/08/doggo.jpg'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, right: 15.0),
                          child: Text('Puppy', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue.shade700),),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
              child: Divider(
                color: Colors.blue.shade100,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    showPosts = true;
                    showTags = false;
                    showSaved = false;
                  },
                  icon: Icon(Icons.grid_on, color: Color(0xff000080))
                ),
                IconButton(
                  onPressed: () {
                    showTags = true;
                    showPosts = false;
                    showSaved = false;
                  },
                  icon: Icon(Icons.assignment_ind, color: Colors.blue.shade700),
                ),
                IconButton(
                  onPressed: () {
                    showSaved = true;
                    showPosts = false;
                    showTags = false;
                  },
                  icon: Icon(Icons.bookmark, color: Colors.blue.shade700),
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: GridView.count(
                    crossAxisCount: 3,
                    childAspectRatio: 1.0,
                    padding: const EdgeInsets.all(4.0),
                    mainAxisSpacing: 4.0,
                    crossAxisSpacing: 4.0,
                    children: <String>[
                      'https://wallpapercave.com/wp/wp3473585.jpg',
                      'https://i.pinimg.com/originals/21/3e/ca/213ecafc4897529562abbce18fcaddd7.jpg',
                      'https://i.pinimg.com/236x/09/49/2a/09492a5f6fdbf88eab9d4c40db68d72b--dew-drops-rain-drops.jpg',
                      'https://wallpapercave.com/wp/wp3021097.jpg',
                    ].map((String url) {
                      return GridTile(
                          child: Image.network(url, fit: BoxFit.cover));
                    }).toList()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
