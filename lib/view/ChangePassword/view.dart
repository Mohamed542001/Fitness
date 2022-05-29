import 'package:Fitness/view/ChangePassword/components/ChangePasswordButton.dart';
import 'package:Fitness/view/ChangePassword/components/ChangePasswordForm.dart';
import 'package:Fitness/view/ChangePassword/components/ChangePasswordHeader.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.white,
        child: Column(
          children: [
            ChangePasswordHeader(),
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  ChangePasswordForm(),
                  ChangePasswordButton(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
