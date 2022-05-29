import 'package:Fitness/view/NewAccQuestion5/controller.dart';
import 'package:Fitness/view/NewAccQuestion5/states.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrainingDays extends StatelessWidget {
  const TrainingDays({Key key}) : super(key: key);

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
                title: 'ايام التمرين',
                size: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      activeColor: AppColors.primary,
                        value: Question5Cubit.get(context).check,
                        onChanged: (val)=>Question5Cubit.get(context).isChecked(val),
                      ),
                    CustomText(
                      title: 'السبت',
                      size: 12,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: AppColors.primary,
                      value: Question5Cubit.get(context).check1,
                      onChanged: (val)=>
                          Question5Cubit.get(context).isChecked1(val),
                    ),
                    CustomText(
                      title: 'الاحد',
                      size: 12,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: AppColors.primary,
                      value: Question5Cubit.get(context).check2,
                      onChanged: (val)=>
                          Question5Cubit.get(context).isChecked2(val),
                    ),
                    CustomText(
                      title: 'الاثنين',
                      size: 12,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: AppColors.primary,
                      value: Question5Cubit.get(context).check3,
                      onChanged: (val)=>
                          Question5Cubit.get(context).isChecked3(val),
                    ),
                    CustomText(
                      title: 'الثلاثاء',
                      size: 12,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
              ],
            ),

            Row(
              children: [
                Row(
                  children: [
                    Checkbox(
                      activeColor: AppColors.primary,
                      value: Question5Cubit.get(context).check4,
                      onChanged: (val)=>
                          Question5Cubit.get(context).isChecked4(val),
                    ),
                    CustomText(
                      title: 'الاربعاء',
                      size: 12,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: AppColors.primary,
                      value: Question5Cubit.get(context).check5,
                      onChanged: (val)=>
                          Question5Cubit.get(context).isChecked5(val),
                    ),
                    CustomText(
                      title: 'الخميس',
                      size: 12,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: AppColors.primary,
                      value: Question5Cubit.get(context).check6,
                      onChanged: (val)=>
                          Question5Cubit.get(context).isChecked6(val),
                    ),
                    CustomText(
                      title: 'الجمعة',
                      size: 12,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
