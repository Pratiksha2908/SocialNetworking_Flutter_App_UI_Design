import 'package:flutter/material.dart';
import 'package:friend_circle_ui/noti_page.dart';
import 'package:friend_circle_ui/sign_in_page.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingScreen extends StatefulWidget {
  static const String id = 'setting_screen';
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff000080), //change your color here
        ),
        title: Text("Settings", style: TextStyle(color: Color(0xff000080), fontWeight: FontWeight.bold, fontSize: 18.0, fontFamily: "MontserratAlternates"),),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: SettingsList(
          sections: [
            SettingsSection(
              tiles: [
                SettingsTile(
                  title: 'Notifications',
                  titleTextStyle: TextStyle(color: Colors.blue.shade700),
                  leading: Icon(Icons.notifications_none,color: Colors.blue.shade700,),
                  onPressed: (BuildContext context) {
                    Navigator.pushNamed(context, NotificationPage.id);
                  },
                ),
                SettingsTile(
                  title: 'Privacy',
                  titleTextStyle: TextStyle(color: Colors.blue.shade700),
                  leading: Icon(Icons.lock,color: Colors.blue.shade700,),
                  onPressed: null,
                ),
                SettingsTile(
                  title: 'Security',
                  titleTextStyle: TextStyle(color: Colors.blue.shade700),
                  leading: Icon(Icons.verified_user,color: Colors.blue.shade700,),
                  onPressed: null,
                ),
                SettingsTile(
                  title: 'Help',
                  titleTextStyle: TextStyle(color: Colors.blue.shade700),
                  leading: Icon(Icons.help_outline,color: Colors.blue.shade700,),
                  onPressed: null,
                ),
                SettingsTile(
                  title: 'About',
                  titleTextStyle: TextStyle(color: Colors.blue.shade700),
                  leading: Icon(Icons.info_outline,color: Colors.blue.shade700,),
                  onPressed: null,
                ),
              ],
            ),
            SettingsSection(
              title: 'Account',
              titlePadding: EdgeInsets.only(top: 30.0, left: 20.0),
              titleTextStyle: TextStyle(color: Color(0xff000080), fontWeight: FontWeight.bold, fontSize: 17.0),
              tiles: [
                SettingsTile(
                  title: 'Sign out',
                  titleTextStyle: TextStyle(color: Colors.blue.shade700, fontWeight: FontWeight.bold, fontSize: 17.0),
                  leading: Icon(Icons.exit_to_app,color: Colors.blue.shade700,),
                  onPressed: (BuildContext context) {
                    Navigator.pushNamed(context, SignInPage.id);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
