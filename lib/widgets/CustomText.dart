import 'package:Fitness/widgets/AppColors.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget{

  final String title;
  final Color color;
  final double size;
  final int maxLines;
  final TextAlign align;
  final FontWeight fontWeight;
  final TextDecoration decoration;
  CustomText({this.title,this.color,this.maxLines,this.size,this.align,this.fontWeight,this.decoration});

  @override
  Widget build(BuildContext context) {
    
    return Text(
      title,
      maxLines: maxLines,
      textAlign: align??TextAlign.start,
      style: TextStyle(
        color: color??AppColors.black,
        fontSize: size??16,
        fontWeight: fontWeight,
        decoration: decoration?? TextDecoration.none,
      ),
    );
  }

}