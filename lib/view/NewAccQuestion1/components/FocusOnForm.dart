import 'package:Fitness/res.dart';
import 'package:Fitness/view/NewAccQuestion1/controller.dart';
import 'package:Fitness/view/NewAccQuestion1/states.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FocusOnForm extends StatelessWidget {
  const FocusOnForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>Question1Cubit(),
      child: BlocConsumer<Question1Cubit,Question1States>(
          listener: (context,state){},
        builder: (context,state)=>Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              title: 'هل تريد التركيز اكثر علي التمارين ام التغذية؟',
              size: 9,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: (){
                Question1Cubit.get(context).isSelected();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                decoration: BoxDecoration(
                  color:Question1Cubit.get(context).select?AppColors.white
                      :AppColors.formColor,
                  border: Border.all(
                      color: Question1Cubit.get(context).select?AppColors.primary
                          :AppColors.formColor,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListTile(
                  leading: CustomText(
                    title: 'التمارين',
                    size: 9,
                    color: Question1Cubit.get(context).select?AppColors.primary
                        :AppColors.formTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                  trailing: Image.asset(
                      Res.icon1,
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
                Question1Cubit.get(context).isSelected1();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                decoration: BoxDecoration(
                  color:Question1Cubit.get(context).select1?AppColors.white
                      :AppColors.formColor,
                  border: Border.all(
                    color: Question1Cubit.get(context).select1?AppColors.primary
                        :AppColors.formColor,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListTile(
                  leading: CustomText(
                    title: 'التغذية',
                    size: 9,
                    color: Question1Cubit.get(context).select1?AppColors.primary
                        :AppColors.formTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                  trailing: Image.asset(
                    Res.icon2,
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
                Question1Cubit.get(context).isSelected2();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                decoration: BoxDecoration(
                  color:Question1Cubit.get(context).select2?AppColors.white
                      :AppColors.formColor,
                  border: Border.all(
                    color: Question1Cubit.get(context).select2?AppColors.primary
                        :AppColors.formColor,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListTile(
                  leading: CustomText(
                    title: 'التمارين و التغذية',
                    size: 9,
                    color: Question1Cubit.get(context).select2?AppColors.primary
                        :AppColors.formTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                  trailing: Image.asset(
                    Res.icon3,
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
