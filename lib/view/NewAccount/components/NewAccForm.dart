import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller.dart';
import '../states.dart';

class NewAccForm extends StatelessWidget {
  const NewAccForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 350,
          decoration: new BoxDecoration(
            color: AppColors.formColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                hintText: 'الاسم',
                hintStyle: TextStyle(
                  color: AppColors.formTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                )),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        BlocProvider(
          create: (context) => NewAccCubit(),
          child: BlocConsumer<NewAccCubit, NewAccStates>(
            listener: (context, state) {},
            builder: (context, state) => Column(
              children: [
                Container(
                  height: 60,
                  width: 350,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: AppColors.formColor,
                      border: Border.all(
                          color: AppColors.formTextColor
                      ),
                      borderRadius: BorderRadius.circular(50)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      iconDisabledColor: AppColors.primary,
                      iconEnabledColor: AppColors.primary,
                      iconSize: 40,
                      isExpanded: true,
                      hint: CustomText(
                        title: 'عدد أيام التمرين',
                        color: AppColors.formTextColor,
                        size: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      items: ['ذكر', 'أنثي']
                          .map((e) => DropdownMenuItem(
                                child: CustomText(title: '$e'),
                                value: e,
                              ))
                          .toList(),
                      value: NewAccCubit.get(context).selectedGender,
                      onChanged: (val) =>
                          NewAccCubit.get(context).isSelected(val),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 60,
          width: 350,
          decoration: new BoxDecoration(
            color: AppColors.formColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: 'البريد الالكتروني',
                hintStyle: TextStyle(
                  color: AppColors.formTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                )),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 60,
          width: 350,
          decoration: new BoxDecoration(
            color: AppColors.formColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: TextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecoration(
                hintText: 'كلمة المرور',
                hintStyle: TextStyle(
                  color: AppColors.formTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                )),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 60,
          width: 350,
          decoration: new BoxDecoration(
            color: AppColors.formColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: TextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecoration(
                hintText: 'تأكيد كلمة المرور',
                hintStyle: TextStyle(
                  color: AppColors.formTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                )),
          ),
        ),
      ],
    );
  }
}
