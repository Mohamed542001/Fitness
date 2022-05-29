import 'package:Fitness/view/NewAccQuestion4/components/Question4Button.dart';
import 'package:Fitness/view/NewAccQuestion4/components/SlidersView.dart';
import 'package:Fitness/view/NewAccQuestion4/controller.dart';
import 'package:Fitness/view/NewAccQuestion4/states.dart';
import 'package:Fitness/view/constants/WelcomeText.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewAccQuestion4 extends StatelessWidget {
  const NewAccQuestion4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            width: double.infinity,
            height: double.infinity,
            color: AppColors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WelcomeText(),
                SizedBox(height: 30,),
                SlidersView(),
                Question4Button()
              ],
            ),

      ),
    );
  }
}
