import 'package:Fitness/view/constants/WelcomeText.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:flutter/material.dart';

import 'components/MainGoalForm.dart';
import 'components/Question2Button.dart';

class NewAccQuestion2 extends StatelessWidget {
  const NewAccQuestion2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WelcomeText(),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(20),
              child: MainGoalForm(),
            ),
            Question2Button(),
          ],
        ),
      ),
    );
  }
}
