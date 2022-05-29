import 'package:Fitness/view/login/view.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/DefaultButton.dart';
import 'package:flutter/material.dart';

class ChangePasswordButton extends StatelessWidget {
  const ChangePasswordButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      margin: EdgeInsets.symmetric(vertical: 40),
      title: 'انتهيت',
      textSize: 14,
      textFontWeight: FontWeight.bold,
      textColor: AppColors.buttonTextColor,
      color: AppColors.primary,
      borderRadius: BorderRadius.circular(50),
      elev: 0,
      onTap: (){
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_)=>LoginView()),
            (route) => false
        );
      },
    );
  }
}
