import 'package:Fitness/view/NewAccount/components/HaveAccText.dart';
import 'package:Fitness/view/NewAccount/components/NewAccButton.dart';
import 'package:Fitness/view/NewAccount/components/NewAccForm.dart';
import 'package:Fitness/view/constants/LoginHeader.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:flutter/material.dart';

class NewAccount extends StatelessWidget {
  const NewAccount({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        color: AppColors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LoginHeader(),
            SizedBox(
              height: 30,
            ),
            NewAccForm(),
            NewAccButton(),
            HaveAccText(),
          ],
        ),
      ),
    );
  }
}
