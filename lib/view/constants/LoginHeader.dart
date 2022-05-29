import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';

import '../../res.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          title:'Fitness',
          size: 35,
          color: AppColors.primary,
          fontWeight: FontWeight.w900,
        ),
        SizedBox(
          width: 5,
        ),
        Image.asset(
          Res.fitIcon,
          width: 26,
          height: 35.22,
          color: AppColors.primary,
        ),
      ],
    );
  }
}
