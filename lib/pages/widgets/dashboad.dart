import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hit_alert/pages/widgets/MQ4.dart';
import 'package:hit_alert/pages/widgets/emergency_confirmation_dialog.dart';
import 'package:hit_alert/pages/widgets/flame.dart';
import 'package:hit_alert/pages/widgets/setting.dart';

import '../smoke.dart';
import 'About_us.dart';
import 'FAQ.dart';
import 'FireStation_details.dart';
import 'Hospital_details.dart';
import 'MQ3.dart';
import 'Temperature.dart';
import 'Terms.dart';
import 'exit_confirmation_dialog.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double _drawerIconSize = 24;
    double _drawerFontSize = 17;
    double _headerHeight = 300;


    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            "Home Page",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          elevation: 0.5,
          iconTheme: IconThemeData(color: Colors.white),
         /* shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),*/
          actions: [
            InkWell(
              onTap: (){
                showDialog(context: context, builder: (context) => EmergencyConfirmationDialog());
              },
              child: Icon(Icons.add_alert,color: Colors.white,),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 16,
                right: 16,
              ),
            )
          ],
        ),
        drawer: Drawer(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [
                      0.0,
                      1.0
                    ],
                    colors: [
                      Theme.of(context).primaryColor.withOpacity(0.2),
                      Theme.of(context).accentColor.withOpacity(0.5),
                    ])),
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.0, 1.0],
                      colors: [
                        Theme.of(context).primaryColor,
                        Theme.of(context).accentColor,
                      ],
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "HitAlert!",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.perm_contact_calendar_outlined,
                    size: _drawerIconSize,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text(
                    'Profile Page',
                    style: TextStyle(
                        fontSize: _drawerFontSize,
                        color: Theme.of(context).accentColor),
                  ),
                  onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Setting()),
                  );
                },
                ),
                Divider(
                  color: Theme.of(context).primaryColor,
                  height: 1,
                ),
               /* ListTile(
                  leading: Icon(
                    Icons.home,
                    size: _drawerIconSize,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(
                        fontSize: _drawerFontSize,
                        color: Theme.of(context).accentColor),
                  ),
                  onTap: () {
                    SystemNavigator.pop();
                  },
                ),
                Divider(
                  color: Theme.of(context).primaryColor,
                  height: 1,
                ),*/
                ListTile(
                  leading: Icon(
                    Icons.local_hospital_outlined,
                    size: _drawerIconSize,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text(
                    'Hospital details',
                    style: TextStyle(
                        fontSize: _drawerFontSize,
                        color: Theme.of(context).accentColor),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Hospital()),
                    );
                  },
                ),
                Divider(
                  color: Theme.of(context).primaryColor,
                  height: 1,
                ),
                ListTile(
                  leading: Icon(
                    Icons.local_fire_department,
                    size: _drawerIconSize,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text(
                    'Fire station details',
                    style: TextStyle(
                        fontSize: _drawerFontSize,
                        color: Theme.of(context).accentColor),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Fire()),
                    );
                  },
                ),
                Divider(
                  color: Theme.of(context).primaryColor,
                  height: 1,
                ),
                // ListTile(
                //   leading: Icon(
                //     Icons.help_outline,
                //     size: _drawerIconSize,
                //     color: Theme.of(context).accentColor,
                //   ),
                //   title: Text(
                //     'FAQ',
                //     style: TextStyle(
                //         fontSize: _drawerFontSize,
                //         color: Theme.of(context).accentColor),
                //   ),
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => FAQ()),
                //     );
                //   },
                // ),
                // Divider(
                //   color: Theme.of(context).primaryColor,
                  // height: 1,
                // ),
                 ListTile(
                   leading: Icon(
                       Icons.policy_outlined,
                       size: _drawerIconSize,
                       color: Theme.of(context).accentColor,
                   ),
                  title: Text(
                     'Terms and conditions',
                     style: TextStyle(
                        fontSize: _drawerFontSize,
                        color: Theme.of(context).accentColor),
                  ),
                   onTap: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => Term()),
                     );
                   },
                ),
                Divider(
                  color: Theme.of(context).primaryColor,
                  height: 1,
                 ),
                ListTile(
                  leading: Icon(
                    Icons.info_outline,
                    size: _drawerIconSize,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text(
                    'About us',
                    style: TextStyle(
                        fontSize: _drawerFontSize,
                        color: Theme.of(context).accentColor),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => About()),
                    );
                  },
                ),
                Divider(
                  color: Theme.of(context).primaryColor,
                  height: 1,
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout_rounded,
                    size: _drawerIconSize,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(
                        fontSize: _drawerFontSize,
                        color: Theme.of(context).accentColor),
                  ),
                  onTap: () {
                    showDialog(context: context, builder: (context) => ExitConfirmationDialog());
                  },
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color: Color(0xffe5a61d),
                margin: EdgeInsets.only(left: 50,top: 36,bottom: 16),
                shape: RoundedRectangleBorder(
                    borderRadius:  BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        bottomLeft: Radius.circular(50.0),)
                ),
                elevation: 8,
                child:InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AlcoholPage()),
                    );
                  },
                  child: Container(
                      height: 200,
                      alignment: Alignment.center,
                      child: Text("ALCOHOL SENSOR")),
                ),
              ),
              Card(
                color: Color(0xffe5a61d),
                margin: EdgeInsets.only(left: 50,top: 16,bottom: 16),
                shape: RoundedRectangleBorder(
                    borderRadius:  BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      bottomLeft: Radius.circular(50.0),)
                ),
                elevation: 8,
                child:InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SmokePage()),
                    );
                  },
                  child: Container(
                      height: 200,
                      alignment: Alignment.center,
                      child: Text("SMOKE SENSOR")),
                ),
              ),
              Card(
                color:Color(0xffe5a61d),
                margin: EdgeInsets.only(left: 50,top: 16,bottom: 16),
                shape: RoundedRectangleBorder(
                    borderRadius:  BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      bottomLeft: Radius.circular(50.0),)
                ),
                elevation: 8,
                child:InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FlamePage()),
                    );
                  },
                  child: Container(
                      height: 200,
                      alignment: Alignment.center,
                      child: Text("FLAME SENSOR")),
                ),
              ),
              Card(
                color:Color(0xffe5a61d),
                margin: EdgeInsets.only(left: 50,top: 16,bottom: 16),
                shape: RoundedRectangleBorder(
                    borderRadius:  BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      bottomLeft: Radius.circular(50.0),)
                ),
                elevation: 8,
                child:InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TempraturePage()),
                    );
                  },
                  child: Container(
                      height: 200,
                      alignment: Alignment.center,
                      child: Text("TEMPRATURE SENSOR")),
                ),
              ),
              Card(
                color:Color(0xffe5a61d),
                margin: EdgeInsets.only(left: 50,top: 16,bottom: 16),
                shape: RoundedRectangleBorder(
                    borderRadius:  BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      bottomLeft: Radius.circular(50.0),)
                ),
                elevation: 8,
                child:InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MQ4Page()),
                    );
                  },
                  child: Container(
                      height: 200,
                      alignment: Alignment.center,
                      child: Text("CNG GAS SENSOR")),
                ),
              ),
            ],
          ),
        ));
  }
}