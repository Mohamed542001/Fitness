import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';

class MealComponents extends StatelessWidget {
  const MealComponents({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            title: 'المكونات',
            size: 18,
            fontWeight: FontWeight.w900,
          ),
          SizedBox(
            height: 5,
          ),
          CustomText(
            title: '20 جم خبز',
            size: 16,
            color: AppColors.blackOpacity,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 5,
          ),
          CustomText(
            title: '3 حبات طماطم',
            size: 16,
            color: AppColors.blackOpacity,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 5,
          ),
          CustomText(
            title: 'نص كيميتشي',
            size: 16,
            color: AppColors.blackOpacity,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
