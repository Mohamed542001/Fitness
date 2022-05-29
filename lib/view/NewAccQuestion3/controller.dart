import 'package:Fitness/view/NewAccQuestion3/states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Question3Cubit extends Cubit<Question3States>{
  Question3Cubit() : super(Question3Init());

  static Question3Cubit get(context)=>BlocProvider.of(context);

  bool select=false;
  bool select1=false;

  void isSelected(){
    select=!select;
    emit(Question3SelectedState());
  }

  void isSelected1(){
    select1=!select1;
    emit(Question3SelectedState1());
  }

}