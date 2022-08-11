import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/page/progile_page.dart';
import 'package:flutter_profile/theme.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: ProfilePage(),
      debugShowCheckedModeBanner: false
      ,
    );
  }
}




