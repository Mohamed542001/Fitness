import 'package:Fitness/view/ForgetPassword/view.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';

class LoginForgetText extends StatelessWidget {
  const LoginForgetText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (_)=>ForgetPassword()),
        );
      },
      child: CustomText(
        title: 'هل نسيت كلمة المرور؟',
        size: 14,
        color: AppColors.formTextColor,
        decoration: TextDecoration.underline,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
