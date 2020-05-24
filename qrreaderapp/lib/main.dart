import 'package:flutter/material.dart';
import 'package:qrreaderapp/pages/home_page.dart';

void main()=>runApp(MyApp());
//test


class  MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'qrreader',
      initialRoute: 'home',
      routes: {
        'home':(context)=>HomePage()
      },      
    );
  }
}