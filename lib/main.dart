import 'package:Fitness/view/splash/view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
      builder: (context,child)=>Directionality(textDirection: TextDirection.rtl,child: child,),
    );
  }
}


