import 'package:Fitness/view/CompleteReading/view.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller.dart';
import '../states.dart';

class TopicsCard extends StatelessWidget {
  const TopicsCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            title: 'مواضيع تهمك',
            size: 18,
            color: AppColors.black,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 10,
          ),
          BlocProvider(
            create: (context) => HomeCubit(),
            child: BlocConsumer<HomeCubit, HomeStates>(
              listener: (context, state) {},
              builder: (context, state) => ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: HomeCubit.get(context).homeCardData.length,
                itemBuilder: (context, i) => InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_)=>CompleteReading()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: 200,
                    width: double.infinity,
                    child: Card(
                      color: AppColors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      elevation: 5,
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(25),
                                      bottomRight: Radius.circular(25),
                                    ),
                                    child: Image.asset(
                                      HomeCubit.get(context).homeCardData[i]
                                          ['image'],
                                      fit: BoxFit.fill,
                                      width: 100,
                                      height: double.infinity,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CustomText(

                                        title:
                                            '${HomeCubit.get(context).homeCardData[i]['title']}',
                                        color: AppColors.black,
                                        size: 18,
                                        maxLines: 5,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        child: CustomText(
                                          title:'${HomeCubit.get(context).homeCardData[i]['text']}',
                                          size: 11,
                                          color: AppColors.blackOpacity,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (_)=>CompleteReading()),
                                          );
                                        },
                                        child: CustomText(
                                          title: 'تكملة القراءة',
                                          color: AppColors.primary,
                                          decoration: TextDecoration.underline,
                                          size: 14,
                                          align: TextAlign.end,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
