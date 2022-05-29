import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';

import '../../../res.dart';

class WeeklyWeighing extends StatelessWidget {
  const WeeklyWeighing({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        children: [
          CustomText(
            title: 'قياس الوزن الاسبوعي',
            color: AppColors.black,
            size: 14,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10  ),
            width: 200,
            decoration: BoxDecoration(
              color: AppColors.formColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  CustomText(
                    title: '55',
                    size: 12,
                    color: AppColors.formTextColor,
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Image.asset(Res.pen),
                  ),
                ]
            ),
          ),
        ],
      ),
    );
  }
}
