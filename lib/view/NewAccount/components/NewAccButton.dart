import 'package:Fitness/view/NewAccQuestion1/view.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/DefaultButton.dart';
import 'package:flutter/material.dart';

class NewAccButton extends StatelessWidget {
  const NewAccButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: 'انشاء حساب',
      textSize: 14,
      textFontWeight: FontWeight.bold,
      textColor: AppColors.buttonTextColor,
      color: AppColors.primary,
      borderRadius: BorderRadius.circular(50),
      elev: 0,
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (_)=>NewAccQuestion1()),
        );
      },
    );
  }
}
