import 'package:construction_webpage/Navigation/NavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:construction_webpage/landingpage/landingpage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Landing page for a construction firm',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'AveriaSansLibre',
    scaffoldBackgroundColor: Colors.teal[700],
      ),
      home:TheHomePage(),
    );
  }
}
class TheHomePage extends StatelessWidget {
  const TheHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration:const BoxDecoration(
        gradient:  LinearGradient(
            begin: Alignment.centerLeft,
            end:Alignment.centerRight,
            colors:
             [Color.fromRGBO(56, 19, 156, 0.62),Color.fromRGBO(61, 32, 190, 0.151)],
        ),
        ),
        child: const SingleChildScrollView(
          child:  Column(
            children: <Widget>[NavigBar(), Padding(
              padding: EdgeInsets.symmetric(vertical:20.0,horizontal:60.0),
              child: LandingPage(),
            )],
          ),
        ),
      )
    );
  }
}

