import 'package:Fitness/widgets/AppColors.dart';
import 'package:flutter/material.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.formColor,
        borderRadius: BorderRadius.circular(30)
      ),
      child: SizedBox(
        height:50,
        child: TextFormField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            suffixIcon: Container(
              width: 100,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(30)
              ),
              child: Icon(
                Icons.search,
                color: AppColors.white,
                size: 30,
              ),
            ),
            hintText: 'بحث',
            enabledBorder: OutlineInputBorder(
                borderSide:BorderSide(
                    color: AppColors.formColor,
                    ),
                borderRadius: BorderRadius.circular(30)
            ),
            focusedBorder: OutlineInputBorder(
                borderSide:BorderSide(
                  color: AppColors.formColor,
                ),
              borderRadius: BorderRadius.circular(30)
            ),
          ),
        ),
      ),
    );
  }
}
