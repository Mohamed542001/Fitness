import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../res.dart';
import '../controller.dart';
import '../states.dart';

class ExerciseLocation extends StatelessWidget {
  const ExerciseLocation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>Question3Cubit(),
      child: BlocConsumer<Question3Cubit,Question3States>(
        listener: (context,state){},
        builder: (context,state)=>Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              title: 'مكان التمرين',
              size: 9,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: (){
                Question3Cubit.get(context).isSelected();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                decoration: BoxDecoration(
                  color:Question3Cubit.get(context).select?AppColors.white
                      :AppColors.formColor,
                  border: Border.all(
                    color: Question3Cubit.get(context).select?AppColors.primary
                        :AppColors.formColor,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListTile(
                  leading: CustomText(
                    title: 'البيت',
                    size: 9,
                    color: Question3Cubit.get(context).select?AppColors.primary
                        :AppColors.formTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                  trailing: Image.asset(
                    Res.icon8,
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
                Question3Cubit.get(context).isSelected1();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                decoration: BoxDecoration(
                  color:Question3Cubit.get(context).select1?AppColors.white
                      :AppColors.formColor,
                  border: Border.all(
                    color: Question3Cubit.get(context).select1?AppColors.primary
                        :AppColors.formColor,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListTile(
                  leading: CustomText(
                    title: 'الجيم',
                    size: 9,
                    color: Question3Cubit.get(context).select1?AppColors.primary
                        :AppColors.formTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                  trailing: Image.asset(
                    Res.icon7,
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
