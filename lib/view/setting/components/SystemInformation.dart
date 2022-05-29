import 'package:Fitness/view/setting/controller.dart';
import 'package:Fitness/view/setting/states.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../res.dart';

class SystemInformation extends StatelessWidget {
  const SystemInformation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          title: 'معلومات النظام',
          size: 20,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: 15,
        ),
        GridView.builder(
          shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 30,
              childAspectRatio: 1/0.6,
            ),
            itemCount: 10,
          itemBuilder: (context,i)=>BlocProvider(
            create: (context)=>SettingCubit(),
            child: BlocConsumer<SettingCubit,SettingStates>(
              listener: (context,state){},
              builder: (context,state)=>Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    title: '${SettingCubit.get(context).listInformation[i]['titleName']}',
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.formColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: ListTile(
                      title: CustomText(
                        title: '${SettingCubit.get(context).listInformation[i]['textName']}',
                        size: 12,
                        color: AppColors.formTextColor,
                      ),
                      trailing: IconButton(
                        onPressed: (){},
                        icon: Image.asset(Res.pen),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
