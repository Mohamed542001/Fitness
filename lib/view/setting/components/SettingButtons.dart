import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/DefaultButton.dart';
import 'package:flutter/material.dart';

class SettingButton extends StatelessWidget {
  const SettingButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: DefaultButton(
              title: 'حفظ التغيرات',
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              color: AppColors.primary,
              onTap: () {},
              elev: 10,
              width: double.infinity,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: DefaultButton(
              title: 'الغاء',
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              color: AppColors.white,
              textColor: AppColors.primary,
              borderColor: AppColors.primary,
              elev: 10,
              onTap: () {},
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
