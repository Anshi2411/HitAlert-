import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AboutState();
  }
}

class _AboutState extends State<About> {
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            "About us",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          elevation: 0.5,
          iconTheme: IconThemeData(color: Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),

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
                      'About us',
                      style:
                      TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40,
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
                              "C",
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
                              padding: EdgeInsets.all(15),
                              child: Column(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      ...ListTile.divideTiles(
                                        color: Colors.grey,
                                        tiles: [
                                          Text(
                                            'HITALERT!',
                                            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          ListTile(
                                            contentPadding:
                                            EdgeInsets.symmetric(
                                                horizontal: 16,
                                                vertical: 6),
                                            leading: Icon(Icons.location_on_sharp),
                                            title: Text("Address"),
                                            subtitle: Text(
                                                "HITALERT, 2nd Floor, Yash Arian Complex, Swami Vivekanand Cir, Bhuyangdev Society, Memnagar, Ahmedabad, Gujarat 380052"),
                                          ),
                                          ListTile(
                                            contentPadding:
                                            EdgeInsets.symmetric(
                                                horizontal: 16,
                                                vertical: 6),
                                            leading: Icon(Icons.email),
                                            title: Text("Email"),
                                            subtitle:
                                            Text("hitalert2022@gmail.com"),
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.phone),
                                            title: Text("contact us"),
                                            subtitle: Text("7433978385\n 9773437259"),
                                          ),
                                          ListTile(
                                            contentPadding:
                                            EdgeInsets.symmetric(
                                                horizontal: 16,
                                                vertical: 6),
                                            leading: Icon(Icons.email),
                                            title: Text("ANSHI PATWA"),
                                            subtitle:
                                            Text("Expert in the iot hardware and Frontend developer along with its coding and testing and is highly specialized in application coding"),
                                          ),
                                          ListTile(
                                            contentPadding:
                                            EdgeInsets.symmetric(
                                                horizontal: 16,
                                                vertical: 6),
                                            leading: Icon(Icons.email),
                                            title: Text("SHAILY THAKKAR"),
                                            subtitle:
                                            Text("Expert in the report, ui designing along with model making and applaction making"),
                                          ),
                                          ListTile(
                                            contentPadding:
                                            EdgeInsets.symmetric(
                                                horizontal: 16,
                                                vertical: 6),
                                            leading: Icon(Icons.email),
                                            title: Text("KHUSHI SURTI"),
                                            subtitle:
                                            Text("Expert in the ui desiging,  presentation making along with model and applaction coding"),
                                          ),
                                          ListTile(
                                            contentPadding:
                                            EdgeInsets.symmetric(
                                                horizontal: 16,
                                                vertical: 6),
                                            leading: Icon(Icons.email),
                                            title: Text("PATEL NANCY"),
                                            subtitle:
                                            Text("Major contribtuion in API developing and in application development "),
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
