import 'package:Fitness/res.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';

class WeightProgression extends StatelessWidget {
  const WeightProgression({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            title: 'متابعة الوزن',
            size: 18,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset(
              Res.weightDiagram,
            fit: BoxFit.fill,
          )
        ],
      ),
    );
  }
}
