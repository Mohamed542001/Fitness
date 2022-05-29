import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller.dart';
import '../states.dart';

class TrainingWithTools extends StatelessWidget {
  const TrainingWithTools({Key key}) : super(key: key);

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
                title: 'التمرين بادوات ؟',
                size: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            Row(
              children: [
                Radio(
                  activeColor: AppColors.primary,
                    value: 'ادوات',
                    groupValue: Question5Cubit.get(context).radioSelect,
                    onChanged: (val)=>
                    Question5Cubit.get(context).radioChoice(val),
                ),
                CustomText(
                  title: 'ادوات',
                  size: 16,
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                  activeColor: AppColors.primary,
                  value: 'من غير ادوات',
                  groupValue: Question5Cubit.get(context).radioSelect,
                  onChanged: (val)=>
                      Question5Cubit.get(context).radioChoice(val),
                ),
                CustomText(
                  title: 'من غير ادوات',
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
