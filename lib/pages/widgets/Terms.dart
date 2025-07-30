import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Term extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TermState();
  }
}

class _TermState extends State<Term> {
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Terms and Conditions",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          elevation: 0.5,
          iconTheme: IconThemeData(color: Colors.white),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Theme.of(context).primaryColor,
                      Theme.of(context).accentColor,
                    ])),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(
                top: 16,
                right: 16,
              ),



            ),]),



            body: SingleChildScrollView(
        child: Stack(
            children: [
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Column(
                    children: [


                      Text(
                          "Terms and conditions applies\n \n Retention of Rights of Ownership/Ban on Infringement/n Retention of the Right to Change the App at Any Time\n Restriction on App Abuses\n Disclaimer of Warranties and Liabilities/n Retention of Right to Terminate/Ban Users\n  Violate any local, state, federal and international laws and regulations\n Violate any copyright, trademark rights, patent rights, rights in know-how, privacy or publicity rights, trade secret rights, confidentiality rights, contract rights, or other rights of any individual or legal entity\n You know (or reasonably should know) are false, deceptive or misleading; including any in which you impersonate any person or entity or falsely misrepresent your affiliation with a person or entity\n It collect personal information, including contact information, about others with their prior consent.\n users mobile must have be on \n users internet connection has to be on\n user must have to enter atleast 2 additional contact number\nuser's mobile location has to be active while driving the car\nif any external damage has occured then fault detection won't be possible in that case its not our responsibilty\nthe user that is driving the vehicle has to keep the phone with himself/herself otherwise if accident has done then location would not be able to send to the registered contact, hospital and fire but in that case also we are sending sms to the registered mobile numbers")],
                  ))]),),


    );


  }
}
