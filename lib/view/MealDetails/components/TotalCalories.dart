import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';

class TotalCalories extends StatelessWidget {
  const TotalCalories({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            title: 'اجمالي السعرات الحرارية',
            size: 18,
            fontWeight: FontWeight.w900,
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              CustomText(
                title: '200',
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
              SizedBox(
                width: 10,
              ),
              CustomText(
                title: 'سعر حراري',
                size: 16,
                color: AppColors.blackOpacity,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
