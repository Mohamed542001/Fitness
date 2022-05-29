import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller.dart';
import '../states.dart';

class DietView extends StatelessWidget {
  const DietView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>Question5Cubit(),
      child: BlocConsumer<Question5Cubit,Question5States>(
        listener: (context,state){},
        builder: (context,state)=>Column(
          children: [
            Container(
              alignment: Alignment.topRight,
              child: CustomText(
                title: 'النظام الغذائي',
                size: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Radio(
                  activeColor: AppColors.primary,
                  value: 'عادي',
                  groupValue: Question5Cubit.get(context).radioSelect1,
                  onChanged: (val)=>
                      Question5Cubit.get(context).radioChoice1(val),
                ),
                CustomText(
                  title: 'عادي',
                  size: 16,
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                  activeColor: AppColors.primary,
                  value: 'نباتي',
                  groupValue: Question5Cubit.get(context).radioSelect1,
                  onChanged: (val)=>
                      Question5Cubit.get(context).radioChoice1(val),
                ),
                CustomText(
                  title: 'نباتي',
                  size: 16,
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                  activeColor: AppColors.primary,
                  value: 'فيجين',
                  groupValue: Question5Cubit.get(context).radioSelect1,
                  onChanged: (val)=>
                      Question5Cubit.get(context).radioChoice1(val),
                ),
                CustomText(
                  title: 'فيجين',
                  size: 16,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
