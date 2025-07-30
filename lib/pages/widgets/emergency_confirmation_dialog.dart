import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../login_page.dart';


class EmergencyConfirmationDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }

  _buildChild(BuildContext context) => Container(
    height: 180,
    decoration: BoxDecoration(
        color:Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(12))
    ),
    child: Column(
      children: <Widget>[
        SizedBox(height: 24,),
        Padding(
          padding: const EdgeInsets.only(top:8.0,left: 12,right: 12,bottom: 8),
          child: Text('Send your emergency to contact detail?',textAlign: TextAlign.center, style: TextStyle(fontSize: 18, color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 24,),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
              ),
              onPressed: () async {
                Navigator.of(context).pop();
              }, child: Text('Yes',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white ),),),
            SizedBox(width: 8,),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
              ),
              onPressed: (){
                Navigator.of(context).pop();
              }, child: Text('No',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white ))),
          ],
        )
      ],
    ),
  );
}