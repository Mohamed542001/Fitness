import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:Fitness/widgets/DefaultButton.dart';
import 'package:flutter/material.dart';

class MealTitle extends StatelessWidget {
  const MealTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: CustomText(
              title: 'السلطة مع قطع الخبز',
              size: 20,
              fontWeight: FontWeight.w900,
              color: AppColors.primary,
            ),
          ),
          Expanded(
            child: Container(
              child: DefaultButton(
                title: 'تم الاكل',
                textSize: 14,
                textFontWeight: FontWeight.bold,
                textColor: AppColors.buttonTextColor,
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(50),
                margin: EdgeInsets.all(0),
                elev: 0,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
