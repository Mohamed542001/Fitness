import 'package:Fitness/res.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:Fitness/widgets/DefaultButton.dart';
import 'package:flutter/material.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          title: 'المعلومات الشخصية',
          size: 20,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.formColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ListTile(
                  title: CustomText(
                    title: 'ميرنا',
                    size: 12,
                    color: AppColors.formTextColor,
                  ),
                  trailing: IconButton(
                    onPressed: (){},
                    icon: Image.asset(Res.pen),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.formColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ListTile(
                  title: CustomText(
                    title: 'انثى',
                    size: 12,
                    color: AppColors.formTextColor,
                  ),
                  trailing: IconButton(
                    onPressed: (){},
                    icon: Image.asset(Res.pen),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.formColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: ListTile(
            title: CustomText(
              title: 'mirnaahmed@gmail.com',
              size: 12,
              color: AppColors.formTextColor,
            ),
            trailing: IconButton(
              onPressed: (){},
              icon: Image.asset(Res.pen),
            ),
          ),
        ),
        TextButton(
            onPressed: (){
              showModalBottomSheet(
                  context: (context),
                  builder: (context)=>Container(
                    height: 320,
                    margin: EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              title: 'تغيير كلمة المرور',
                              size: 20,
                              fontWeight: FontWeight.w900,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.formColor,
                                borderRadius: BorderRadius.circular(30)
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: false,
                                decoration: InputDecoration(
                                    labelText: 'كلمة المرور الحالية',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),

                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColors.formColor,
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'كلمة المرور الجديدة',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),

                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColors.formColor,
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'تأكيد كلمة المرور الجديدة',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),

                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: DefaultButton(
                                title: 'حفظ التغيرات',
                                margin: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                                color: AppColors.primary,
                                onTap: (){},
                                elev: 10,
                                width: double.infinity,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: DefaultButton(
                                title: 'الغاء',
                                margin: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                                color: AppColors.white,
                                textColor: AppColors.primary,
                                borderColor: AppColors.primary,
                                elev: 10,
                                onTap: (){
                                  Navigator.of(context).pop();
                                },
                                width: double.infinity,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
              );
            },
            child: CustomText(
              title: 'تغيير كلمة المرور',
              size: 12,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              color: AppColors.primary,
            ),
        ),
      ],
    );
  }
}
