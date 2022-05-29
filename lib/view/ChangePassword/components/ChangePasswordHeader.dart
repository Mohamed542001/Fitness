import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';

class ChangePasswordHeader extends StatelessWidget {
  const ChangePasswordHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Container(
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.all(15),
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: CustomText(
              title: 'تغيير كلمة المرور',
              size: 25,
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ) ,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_forward_ios_outlined,
                color: AppColors.white,
                size: 20,
              ),
              onPressed: (){
                Navigator.pop(context);
              }
          ),
        ),
      ),
    );
  }
}
