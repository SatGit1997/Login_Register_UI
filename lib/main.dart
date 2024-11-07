
import 'package:flutter/material.dart';
import 'package:login_pages_ui/page_one.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Log in Page UI",
      home: PageOne()
    );
  }
}