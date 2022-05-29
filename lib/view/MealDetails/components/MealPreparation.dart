import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';

class MealPreparation extends StatelessWidget {
  const MealPreparation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            title: 'طريقة التحضير',
            size: 18,
            fontWeight: FontWeight.w900,
          ),
          SizedBox(
            height: 5,
          ),
          CustomText(
            title:
                'للتأمل أن يوفر لك الشعور بالهدوء والسلام والتوازن الذي يمكن أن يفيد كلاً من صحتك النفسية وصحتك العامة.\nهذه الفوائد لا تنتهي بانتهاء جلسات التأمل. فالتأمل يمكن أن يساعدك على التحلي بمزيد من',
            size: 16,
            color: AppColors.blackOpacity,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
