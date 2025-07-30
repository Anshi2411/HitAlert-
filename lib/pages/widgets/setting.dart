import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Setting extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SettingState();
  }
}

class _SettingState extends State<Setting> {
  String userName = "";
  String userEmail = "";
  String userContact = "";
  String Vehical_Type = "";
  String Vehical_Number = "";
  String Emgcont_1 = "";
  String Emgcont_2 = "";
  String Emgcont_3 = "";


  double _drawerIconSize = 24;
  double _drawerFontSize = 17;

  newFieldName() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      userName = sharedPreferences.getString('name')! + " " + sharedPreferences.getString('last_name')!;
      userEmail = sharedPreferences.getString('email')!;
      userContact = sharedPreferences.getString('contactUs')!;
      Vehical_Type = sharedPreferences.getString('vehicle_type')!;
      Vehical_Number = sharedPreferences.getString('vehicle_number')!;
      Emgcont_1 = sharedPreferences.getString('EMERGENCY_CONTACT_1')!;
      Emgcont_2 = sharedPreferences.getString('EMERGEN2Y_CONTACT_2')!;
      Emgcont_3 = sharedPreferences.getString('EMERGENCY_CONTACT_3')!;
    });
  }


  @override
  void initState() {
    newFieldName();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "Profile Page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      /*  flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Theme.of(context).primaryColor,
                Theme.of(context).accentColor,
              ])),
        ),*/
        /*actions: [
          Container(
            margin: EdgeInsets.only(
              top: 16,
              right: 16,
            ),
            child: Stack(
              children: <Widget>[
                Icon(Icons.notifications),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Color(0xfffdeb50),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: Text(
                      '5',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          )
        ],*/
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg_home.jpeg"),
            fit: BoxFit.cover,
          ),
        ),

        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  children: [

                    Text(
                      userName,
                      style: TextStyle(fontSize: 43, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                   /* Text(
                      'Accident Detection And Prevision',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),*/
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding:
                            const EdgeInsets.only(left: 8.0, bottom: 4.0),
                            alignment: Alignment.topLeft,
                            child: Text(
                              "User Information",
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Card(
                            child: Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.all(15),
                              child: Column(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      ...ListTile.divideTiles(
                                        color: Colors.grey,
                                        tiles: [
                                          ListTile(
                                            contentPadding: EdgeInsets.symmetric(
                                                horizontal: 12, vertical: 4),
                                            leading: Icon(Icons.my_location),
                                            title: Text("Location"),
                                            subtitle: Text("INDIA"),
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.email),
                                            title: Text("Email"),
                                            subtitle:
                                            Text(userEmail),
                                          ),

                                          ListTile(
                                            leading: Icon(Icons.time_to_leave_sharp),
                                            title: Text("Vehical Type"),
                                            subtitle:
                                            Text(Vehical_Type),
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.numbers_outlined),
                                            title: Text("Vehical Number"),
                                            subtitle:
                                            Text(Vehical_Number),
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.tty_rounded),
                                            title: Text("EMERGENCY CONT 1"),
                                            subtitle: Text(Emgcont_1),
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.tty_rounded),
                                            title: Text("EMERGENCY CONT 2"),
                                            subtitle: Text(Emgcont_2),
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.tty_rounded),
                                            title: Text("EMERGENCY CONT 3"),
                                            subtitle: Text(Emgcont_3),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
