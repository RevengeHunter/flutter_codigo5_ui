import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo5_ui/pages/login01_page.dart';
import 'package:flutter_codigo5_ui/pages/login02_page.dart';
import 'package:flutter_codigo5_ui/pages/login03_page.dart';
import 'package:flutter_codigo5_ui/pages/sport_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter UI",
      debugShowCheckedModeBanner: false,
      home: SportPage(),
    );
  }
}
