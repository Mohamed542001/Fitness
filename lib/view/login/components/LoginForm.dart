import 'package:Fitness/widgets/AppColors.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 350,
          decoration: new BoxDecoration(
              color: AppColors.formColor,
              borderRadius:BorderRadius.circular(50),
          ),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'البريد الالكتروني',
              hintStyle: TextStyle(
                color: AppColors.formTextColor,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              )
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 60,
          width: 350,
          decoration: new BoxDecoration(
            color: AppColors.formColor,
            borderRadius:BorderRadius.circular(50),
          ),
          child: TextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecoration(
                hintText: 'كلمة المرور',
                hintStyle: TextStyle(
                  color: AppColors.formTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                )
            ),
          ),
        ),
      ],
    );
  }
}
