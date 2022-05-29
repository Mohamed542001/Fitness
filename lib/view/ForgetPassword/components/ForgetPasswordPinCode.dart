import 'package:Fitness/widgets/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ForgetPasswordPinCode extends StatelessWidget {
  const ForgetPasswordPinCode({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all( 20),
      child: PinCodeTextField(
        appContext: context,
        length: 5,
        onChanged: (value){
          print(value);
        },
        keyboardType: TextInputType.number,
        pinTheme: PinTheme(
          activeColor: AppColors.greyWhite,
          inactiveColor: Colors.grey,
          selectedColor: AppColors.greyWhite,

          fieldHeight: 57,
          fieldWidth: 51,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(6),


        ),

      ),
    );
  }
}
