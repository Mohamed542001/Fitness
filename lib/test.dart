import 'package:Fitness/res.dart';
import 'package:Fitness/view/menu/components/TrainingCard.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:flutter/material.dart';

class TestView extends StatelessWidget {
  const TestView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
        child: ListView.builder(
          itemCount: 10,
            itemBuilder: (context,i)=>Container(
              height: 100,
              child: Card(

                elevation: 10,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            Image.asset(Res.training1,fit: BoxFit.fill,),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  title: 'mmmmmm}',
                                  color: Colors.grey,
                                  size: 13,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                CustomText(
                                  title: 'career',
                                  color: Colors.red,
                                  size: 10,
                                ),
                              ],

                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            CustomText(
                              title: 'order',
                              color: Colors.grey,
                              size: 10,
                            ),
                            SizedBox(height: 10,),
                            CustomText(
                              title: 'orderNumber',
                              color: Colors.red,
                              size: 10,
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
    );
  }
}
