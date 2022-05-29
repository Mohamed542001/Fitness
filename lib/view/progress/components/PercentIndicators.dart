import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';


class PercentIndicators extends StatelessWidget {
  const PercentIndicators({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: new CircularPercentIndicator(
                radius: 100.0,
                lineWidth: 10.0,
                percent: 0.4,
                center: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      title: 'اللياقة',
                      fontWeight: FontWeight.bold,
                      size: 12,
                      color: AppColors.yellow,
                    ),
                    CustomText(
                      title: '75%',
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
                progressColor: AppColors.blue,
              )
          ),
          Expanded(
            child: new CircularPercentIndicator(
              radius: 100.0,
              lineWidth: 10.0,
              percent: 0.7,
              center: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    title: 'السعرات اليومية',
                    fontWeight: FontWeight.bold,
                    size: 12,
                    color: AppColors.primary,
                  ),
                  CustomText(
                    title: '3500',
                    fontWeight: FontWeight.bold,
                  )
                ],
              ),
              progressColor: AppColors.primary,
            )
          ),
          Expanded(
            child: new CircularPercentIndicator(
              radius: 100.0,
              lineWidth: 10.0,
              percent: 0.7,
              center: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    title: 'عدد الخطوات',
                    fontWeight: FontWeight.bold,
                    size: 12,
                    color: AppColors.yellow,
                  ),
                  CustomText(
                    title: '2000',
                    fontWeight: FontWeight.bold,
                  )
                ],
              ),
              progressColor: Colors.yellow,
            )
          ),
        ],
      ),
    );
  }
}
