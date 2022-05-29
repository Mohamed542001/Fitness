import 'package:Fitness/view/login/components/LoginButton.dart';
import 'package:Fitness/view/login/components/LoginForgetText.dart';
import 'package:Fitness/view/login/components/LoginForm.dart';
import 'package:Fitness/view/constants/LoginHeader.dart';
import 'package:Fitness/view/login/components/LoginNewAccText.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        color: AppColors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LoginHeader(),
            SizedBox(
              height: 30,
            ),
            LoginForm(),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topRight,
                child: LoginForgetText()),
            LoginButton(),
            LoginNewAccText(),
          ],
        ),
      ),
    );
  }
}
