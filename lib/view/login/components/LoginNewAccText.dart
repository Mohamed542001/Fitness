import 'package:Fitness/view/NewAccount/view.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';

class LoginNewAccText extends StatelessWidget {
  const LoginNewAccText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomText(
          title: 'او',
          size: 14,
          color: AppColors.formTextColor,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (_)=>NewAccount()),
            );
          },
          child: CustomText(
            title: 'انشاء حساب',
            size: 14,
            color: AppColors.formTextColor,
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
