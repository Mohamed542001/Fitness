import 'package:Fitness/res.dart';
import 'package:flutter/material.dart';

class CompleteReadingImage extends StatelessWidget {
  const CompleteReadingImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          Res.training3,
          fit: BoxFit.fill,
          height: 200,
          width: double.infinity,
        ),
      ),
    );
  }
}
