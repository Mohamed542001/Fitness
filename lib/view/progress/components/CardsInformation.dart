import 'package:Fitness/view/progress/controllers.dart';
import 'package:Fitness/view/progress/states.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardsInformation extends StatelessWidget {
  const CardsInformation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>ProgressCubit(),

      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: BlocConsumer<ProgressCubit,ProgressStates>(
              listener: (context,state){},
              builder: (context,state)=>GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: ProgressCubit.get(context).caloriesData.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    childAspectRatio: 1/0.6
                ),
                itemBuilder: (context,i)=>Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.formTextColor)
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          title: '${ProgressCubit.get(context).caloriesData[i]['name']}',
                          size: 14,
                          color: AppColors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomText(
                          title: '${ProgressCubit.get(context).caloriesData[i]['value']}',
                          size: 14,
                          color: AppColors.primary,
                        ),
                      ]),
                ),
              ),
            )
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: BlocConsumer<ProgressCubit,ProgressStates>(
                listener: (context,state){},
                builder: (context,state)=>GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: ProgressCubit.get(context).weightData.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 20,
                      childAspectRatio: 1/1
                  ),
                  itemBuilder: (context,i)=>Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColors.formTextColor)
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            title: '${ProgressCubit.get(context).weightData[i]['name']}',
                            size: 12,
                            color: AppColors.black,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomText(
                            title: '${ProgressCubit.get(context).weightData[i]['value']}',
                            size: 14,
                            color: AppColors.primary,
                          ),
                        ]),
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}
