import 'package:Fitness/res.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:flutter/material.dart';

class MealImage extends StatelessWidget {
  const MealImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Res.meal5,
          width: double.infinity,
          fit: BoxFit.fill,
          height: 300,
        ),
        Positioned(
            top: 40,
            right: 30,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: CircleAvatar(
                radius: 50,
                backgroundColor: AppColors.primary,
                child: Icon(Icons.arrow_forward_ios_outlined),
              ),
            )),
      ],
    );
  }
}
