import 'package:Fitness/view/constants/WelcomeText.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:flutter/material.dart';

import 'components/ExerciseLocation.dart';
import 'components/Question3Button.dart';

class NewAccQuestion3 extends StatelessWidget {
  const NewAccQuestion3({Key key}) : super(key: key);

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
              child: ExerciseLocation(),
            ),
            Question3Button(),
          ],
        ),
      ),
    );
  }
}
