import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomText(
          title: 'اهلا بيكي يا ميرنا',
          size: 14,
          color: AppColors.black,
          fontWeight: FontWeight.w900,
        ),
        SizedBox(
          height: 10,
        ),
        CustomText(
          title: 'يا ريت تجاوبي علي الاسئله البسيطه الي جايه عشان نكتب ليكي النظام الخاص بيكي',
          size: 9,
          align: TextAlign.center,
          fontWeight: FontWeight.bold,
        )
      ],
    );
  }
}
