import 'package:Fitness/view/CompleteReading/components/CompleteReadingImage.dart';
import 'package:Fitness/view/CompleteReading/components/CompleteReadingText.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/DefaultAppBar.dart';
import 'package:flutter/material.dart';

class CompleteReading extends StatelessWidget {
  const CompleteReading({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'هل تعلم ان للتأمل فوائد صحية؟',
        bgColor: AppColors.primary,
        color: AppColors.white,
        size: 150,
      ),
      body: Container(
        color: AppColors.white,
        child: ListView(
          children: [
            CompleteReadingImage(),
            CompleteReadingText()
          ],
        ),
      ),
    );
  }
}
