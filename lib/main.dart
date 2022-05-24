import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_arayuz/muzeListesi.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  Color color = Colors.pink;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
       // appBarTheme: color,
      ),
      home: MuzeListesi(),
    );
  }
}