import 'package:Fitness/view/constants/TrainingDays.dart';
import 'package:Fitness/view/setting/components/PersonalInformation.dart';
import 'package:Fitness/view/setting/components/SettingButtons.dart';
import 'package:Fitness/view/setting/components/SystemInformation.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/DefaultAppBar.dart';
import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  const SettingView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'الاعدادات',
        elev: 0,
        back: false,
      ),
      body: Container(
        width: double.infinity,
        color: AppColors.white,
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            PersonalInformation(),
            SystemInformation(),
            TrainingDays(),
            SettingButton(),
          ],
        ),
      ),
    );
  }
}
