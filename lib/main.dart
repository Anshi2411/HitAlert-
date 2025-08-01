import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'pages/splash_screen.dart';

void main() {
  runApp(LoginUiApp());
}

class LoginUiApp extends StatelessWidget {
  Color _primaryColor = HexColor('#e89d13');
  Color _accentColor = HexColor('#ebb223');

  /*Design color
  Color _primaryColor= HexColor('#FFC867');
  Color _accentColor= HexColor('#FF3CBD');*/

  // Our Logo Color
  // Color _primaryColor= HexColor('#D44CF6');
  // Color _accentColor= HexColor('#5E18C8');

  // Our Logo Blue Color
  //Color _primaryColor= HexColor('#651BD2');
  //Color _accentColor= HexColor('#320181');

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HitAlert!',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Color(0xffe8e0e0),
        primarySwatch: Colors.grey,
      ),
      home: SplashScreen(title: 'HitAlert!'),
    );
  }
}
