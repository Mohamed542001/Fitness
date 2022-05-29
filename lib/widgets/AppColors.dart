import 'dart:ui';
import 'package:flutter/material.dart';

class AppColors{
  static Color primary =  Color(0xFF09B44D);
  static Color red =  Color(0xFFAB0C0C);
  static Color grey =  Colors.grey;
  static Color bg=Color(0x9109B44D);
  static Color white=Color(0xFFFFFFFF);
  static Color blue=Color(0xFF2680CC);
  static Color yellow=Color(0xFFE8CD1C);
  static Color formTextColor=Color(0xFFB4B4B4);
  static Color formColor=Color(0xFFEEEEEE);
  static Color buttonTextColor=Color(0xFFF6F6F6);
  static Color transparent=Color(0x8C262626);

  static Color greyWhite=Color(0xFF2626268C);
  static Color black=Color(0xff262626);
  static Color blackOpacity=Colors.black54;

  static Color convertColor(String color){
    int hex = int.parse(color.replaceFirst("#", "0xff"));
    return Color(hex);
  }



}