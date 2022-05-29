import 'package:Fitness/view/MealDetails/view.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller.dart';
import '../states.dart';

class MealCard extends StatelessWidget {
  const MealCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MenuCubit(),
      child: BlocConsumer<MenuCubit, MenuStates>(
        listener: (context, state) {},
        builder: (context, state) => ListView.builder(
            itemCount: MenuCubit.get(context).mealModel.length,
            itemBuilder: (context, i) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      child: CustomText(
                        title:
                            '${MenuCubit.get(context).mealModel[i]['title']}',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => MealDetails(),
                          ),
                        );
                      },
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            margin: EdgeInsets.all(15),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                MenuCubit.get(context).mealModel[i]['image'],
                                fit: BoxFit.fill,
                                width: double.infinity,
                                height: 200,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            width: MediaQuery.of(context).size.width,
                            child: Container(
                              padding: EdgeInsets.all(15),
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                  color: AppColors.transparent,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  )),
                              child: CustomText(
                                align: TextAlign.center,
                                color: AppColors.white,
                                size: 18,
                                fontWeight: FontWeight.bold,
                                title:
                                    '${MenuCubit.get(context).mealModel[i]['name']}',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
      ),
    );
  }
}
