import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

class Hospital extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HospitalState();
  }
}

class _HospitalState extends State<Hospital> {
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "Hospital Details",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        /*flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Theme.of(context).primaryColor,
                    Theme.of(context).accentColor,
                  ])),
        ),*/

      ),
    body: Container(
      height: double.infinity,
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
                    'City Hospital',
                    style: TextStyle(fontSize: 43, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 90,
                  ),

                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding:
                          const EdgeInsets.only(left: 8.0, bottom: 4.0),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Hospital Information",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Card(
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.all(16),
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    ...ListTile.divideTiles(
                                      color: Colors.grey,
                                      tiles: [
                                        ListTile(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 14, vertical: 6),
                                          leading: Icon(Icons.location_on_sharp),
                                          title: Text("Location"),
                                          subtitle: Text("INDIA"),
                                        ),
                                        ListTile(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 6),
                                          leading: Icon(Icons.my_location),
                                          title: Text("Address"),
                                          subtitle: Text("3GCC+7HF, Unnamed Road, Panchamrut Bunglows II, Thaltej, Ahmedabad, Gujarat 380058"),
                                        ),
                                        ListTile(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 6),
                                          leading: Icon(Icons.email),
                                          title: Text("Email"),
                                          subtitle:
                                          Text("cityhospital@gmail.com"),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.phone),
                                          title: Text("Phone"),
                                          subtitle: Text("91--1098765432"),
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
