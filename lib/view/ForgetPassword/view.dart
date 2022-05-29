import 'package:Fitness/view/ForgetPassword/components/ForgetPasswordButton.dart';
import 'package:Fitness/view/ForgetPassword/components/ForgetPasswordHeader.dart';
import 'package:Fitness/view/ForgetPassword/components/ForgetPasswordImage.dart';
import 'package:Fitness/view/ForgetPassword/components/ForgetPasswordPinCode.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.white,
        child: Column(
          children: [
            ForgetPasswordHeader(),
            ForgetPasswordPinCode(),
            ForgetPasswordImage(),
            ForgetPasswordButton(),
          ],
        ),
      ),
    );
  }
}
