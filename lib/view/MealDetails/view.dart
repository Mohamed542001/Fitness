import 'package:Fitness/view/MealDetails/components/MealComponents.dart';
import 'package:Fitness/view/MealDetails/components/MealImage.dart';
import 'package:Fitness/view/MealDetails/components/MealPreparation.dart';
import 'package:Fitness/view/MealDetails/components/MealTitle.dart';
import 'package:Fitness/view/MealDetails/components/TotalCalories.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:flutter/material.dart';

class MealDetails extends StatelessWidget {
  const MealDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: AppColors.white,
        width: double.infinity,
        child: ListView(
          children: [
            MealImage(),
            MealTitle(),
            MealComponents(),
            MealPreparation(),
            TotalCalories(),
          ],
        ),
      ),
    );
  }
}
