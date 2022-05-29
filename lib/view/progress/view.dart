import 'package:Fitness/view/progress/components/CardsInformation.dart';
import 'package:Fitness/view/progress/components/PercentIndicators.dart';
import 'package:Fitness/view/progress/components/WeeklyWeighing.dart';
import 'package:Fitness/view/progress/components/WeightProgression.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/DefaultAppBar.dart';
import 'package:flutter/material.dart';

class ProgressView extends StatelessWidget {
  const ProgressView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'مستوى التقدم',
        elev: 0,
        back: false,
      ),
      body: Container(
        color: AppColors.white,
        child: ListView(
          children: [
            PercentIndicators(),
            WeeklyWeighing(),
            CardsInformation(),
            WeightProgression(),
          ],
        ),
      ),
    );
  }
}
