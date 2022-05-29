import 'package:Fitness/res.dart';
import 'package:Fitness/view/home/states.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller.dart';

class WaterGlass extends StatelessWidget {
  const WaterGlass({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            title:'كام كوباية مياه شربتها انهرده؟',
            size: 18,
            color: AppColors.black,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 10,
          ),
          BlocProvider(
            create: (context)=>HomeCubit(),
            child: BlocConsumer<HomeCubit,HomeStates>(
              listener: (context,state){},
              builder: (context,state)=>GridView.builder(
                shrinkWrap: true,
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 10,
                  crossAxisSpacing: 5,
                ),
                itemBuilder: (context,i)=>InkWell(
                  onTap: (){
                    HomeCubit.get(context).isClicked();
                  },
                  child: Image.asset(
                    HomeCubit.get(context).clicked?Res.fillCup:
                    Res.emptyCup,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
