import 'package:Fitness/view/NavigationPages/view.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/DefaultButton.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultButton(
        title: 'تسجيل الدخول',
        textSize: 14,
        textFontWeight: FontWeight.bold,
        textColor: AppColors.buttonTextColor,
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(50),
        elev: 0,
        onTap: (){
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_)=>MainPage()),
          );
        },
      ),
    );
  }
}
