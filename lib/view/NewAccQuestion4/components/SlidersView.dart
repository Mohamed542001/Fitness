import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller.dart';
import '../states.dart';

class SlidersView extends StatelessWidget {
  const SlidersView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>Question4Cubit(),
    child: BlocConsumer<Question4Cubit,Question4States>(
    listener: (context,state){},
    builder: (context,state)=> Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          alignment: Alignment.topRight,
          child: CustomText(
            title: 'السن',
            size: 9,
            fontWeight: FontWeight.bold,
          ),
        ),
        SliderTheme(
          data: SliderThemeData(
            thumbColor: AppColors.primary,
            activeTrackColor: AppColors.primary,
            valueIndicatorColor: AppColors.primary,
            inactiveTrackColor: AppColors.formColor,
            activeTickMarkColor: Colors.transparent,
            inactiveTickMarkColor: Colors.transparent,
          ),
          child: Slider(
            min: 0,
            max: 40,
            divisions: 40,
            value: Question4Cubit.get(context).value,
            label: Question4Cubit.get(context).value.round().toString(),
            onChanged: (val){
              Question4Cubit.get(context).isChanges(val);
            },
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          alignment: Alignment.topRight,
          child: CustomText(
            title: 'الطول',
            size: 9,
            fontWeight: FontWeight.bold,
          ),
        ),
        SliderTheme(
          data: SliderThemeData(
            thumbColor: AppColors.primary,
            activeTrackColor: AppColors.primary,
            valueIndicatorColor: AppColors.primary,
            inactiveTrackColor: AppColors.formColor,
            activeTickMarkColor: Colors.transparent,
            inactiveTickMarkColor: Colors.transparent,
          ),
          child: Slider(
            min: 0,
            max: 280,
            divisions: 280,
            value: Question4Cubit.get(context).value1,
            label: Question4Cubit.get(context).value1.round().toString(),
            onChanged: (val){
              Question4Cubit.get(context).isChanges1(val);
            },
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          alignment: Alignment.topRight,
          child: CustomText(
            title: 'الوزن',
            size: 9,
            fontWeight: FontWeight.bold,
          ),
        ),
        SliderTheme(
          data: SliderThemeData(
            thumbColor: AppColors.primary,
            activeTrackColor: AppColors.primary,
            valueIndicatorColor: AppColors.primary,
            inactiveTrackColor: AppColors.formColor,
            activeTickMarkColor: Colors.transparent,
            inactiveTickMarkColor: Colors.transparent,
          ),
          child: Slider(
            min: 0,
            max: 120,
            divisions: 120,
            value: Question4Cubit.get(context).value2,
            label: Question4Cubit.get(context).value2.round().toString(),
            onChanged: (val){
              Question4Cubit.get(context).isChanges2(val);
            },
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          alignment: Alignment.topRight,
          child: CustomText(
            title: 'الوزن الي عايزه توصليله',
            size: 9,
            fontWeight: FontWeight.bold,
          ),
        ),
        SliderTheme(
          data: SliderThemeData(
            thumbColor: AppColors.primary,
            activeTrackColor: AppColors.primary,
            valueIndicatorColor: AppColors.primary,
            inactiveTrackColor: AppColors.formColor,
            activeTickMarkColor: Colors.transparent,
            inactiveTickMarkColor: Colors.transparent,
          ),
          child: Slider(
            min: 0,
            max: 120,
            divisions: 120,
            value: Question4Cubit.get(context).value3,
            label: Question4Cubit.get(context).value3.round().toString(),
            onChanged: (val){
              Question4Cubit.get(context).isChanges3(val);
            },
          ),
        ),
      ],
    ),
    ),
    );
  }
}




