import 'package:Fitness/view/progress/states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProgressCubit extends Cubit<ProgressStates>{
  ProgressCubit() : super(ProgressInit());

  static ProgressCubit get(context)=>BlocProvider.of(context);

  List caloriesData=[
    {
      'name':'السعرات الحرارية الداخلة',
      'value': 300,
    },
    {
      'name':'السعرات الحرارية المفقودة',
      'value': 500,
    },

  ];

  List weightData=[
    {
      'name':'وزن الجسم الحالي',
      'value': '55كجم',
    },
    {
      'name':'الوزن المستهدف',
      'value': '60كجم',
    },
    {
      'name':'الوزن المتبقي',
      'value': '4 كجم',
    },

  ];
}