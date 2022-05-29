import 'package:Fitness/view/NewAccQuestion5/components/DaysDropDownButton.dart';
import 'package:Fitness/view/NewAccQuestion5/components/DietView.dart';
import 'package:Fitness/view/NewAccQuestion5/components/Question5Button.dart';
import 'package:Fitness/view/constants/TrainingDays.dart';
import 'package:Fitness/view/NewAccQuestion5/components/TrainingWithTools.dart';
import 'package:Fitness/view/constants/WelcomeText.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:flutter/material.dart';

class NewAccQuestion5 extends StatelessWidget {
  const NewAccQuestion5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.white,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
                child: WelcomeText()
            ),
            SizedBox(
              height: 50,
            ),
            DaysDropDownButton(),
            SizedBox(
              height: 10,
            ),
            TrainingDays(),
            SizedBox(
              height: 10,
            ),
            TrainingWithTools(),
            DietView(),
            Question5Button(),

          ],
        ),

      ),
    );
  }
}
