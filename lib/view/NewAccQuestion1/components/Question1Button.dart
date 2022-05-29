import 'package:Fitness/view/NewAccQuestion2/view.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/DefaultButton.dart';
import 'package:flutter/material.dart';

class Question1Button extends StatelessWidget {
  const Question1Button({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: 'التالي',
      textSize: 11,
      textFontWeight: FontWeight.bold,
      textColor: AppColors.buttonTextColor,
      color: AppColors.primary,
      borderRadius: BorderRadius.circular(50),
      elev: 0,
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (_)=>NewAccQuestion2()),
        );
      },
    );
  }
}
