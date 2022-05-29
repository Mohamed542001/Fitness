import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller.dart';
import '../states.dart';

class DaysDropDownButton extends StatelessWidget {
  const DaysDropDownButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>Question5Cubit(),
      child: BlocConsumer<Question5Cubit,Question5States>(
        listener: (context,state){},
        builder: (context,state)=>Column(
          children: [
            Container(
              width: 200,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: AppColors.formColor,
                  borderRadius: BorderRadius.circular(50)
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  iconDisabledColor: AppColors.primary,
                  iconEnabledColor: AppColors.primary,
                  iconSize: 40,
                  isExpanded: true,
                  hint: CustomText(
                    title: 'عدد أيام التمرين',
                    size: 12,
                  ),
                  items: [3,4,5,6].map((e) =>
                      DropdownMenuItem(
                        child: CustomText(title:'$e'),
                        value: e,
                      )).toList(),
                  value: Question5Cubit.get(context).selectedDay,
                  onChanged: (val)=>Question5Cubit.get(context).isSelected(val),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
