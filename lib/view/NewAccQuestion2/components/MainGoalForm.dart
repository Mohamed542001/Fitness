import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../res.dart';
import '../controller.dart';
import '../states.dart';

class MainGoalForm extends StatelessWidget {
  const MainGoalForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>Question2Cubit(),
      child: BlocConsumer<Question2Cubit,Question2States>(
        listener: (context,state){},
        builder: (context,state)=>Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              title: 'ما هو هدفك الأساسي من النظام؟',
              size: 9,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: (){
                Question2Cubit.get(context).isSelected();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                decoration: BoxDecoration(
                  color:Question2Cubit.get(context).select?AppColors.white
                      :AppColors.formColor,
                  border: Border.all(
                    color: Question2Cubit.get(context).select?AppColors.primary
                        :AppColors.formColor,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListTile(
                  leading: CustomText(
                    title: 'خسارة الوزن',
                    size: 9,
                    color: Question2Cubit.get(context).select?AppColors.primary
                        :AppColors.formTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                  trailing: Image.asset(
                    Res.icon4,
                    width: 32.51,
                    height: 36.56,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: (){
                Question2Cubit.get(context).isSelected1();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                decoration: BoxDecoration(
                  color:Question2Cubit.get(context).select1?AppColors.white
                      :AppColors.formColor,
                  border: Border.all(
                    color: Question2Cubit.get(context).select1?AppColors.primary
                        :AppColors.formColor,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListTile(
                  leading: CustomText(
                    title: 'ضبط شكل الجسم',
                    size: 9,
                    color: Question2Cubit.get(context).select1?AppColors.primary
                        :AppColors.formTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                  trailing: Image.asset(
                    Res.icon5,
                    width: 32.51,
                    height: 36.56,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: (){
                Question2Cubit.get(context).isSelected2();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                decoration: BoxDecoration(
                  color:Question2Cubit.get(context).select2?AppColors.white
                      :AppColors.formColor,
                  border: Border.all(
                    color: Question2Cubit.get(context).select2?AppColors.primary
                        :AppColors.formColor,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListTile(
                  leading: CustomText(
                    title: 'اللياقة بشكل عام',
                    size: 9,
                    color: Question2Cubit.get(context).select2?AppColors.primary
                        :AppColors.formTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                  trailing: Image.asset(
                    Res.icon6,
                    width: 32.51,
                    height: 36.56,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
