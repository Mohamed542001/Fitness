import 'package:Fitness/view/NewAccQuestion1/states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Question1Cubit extends Cubit<Question1States>{
  Question1Cubit() : super(Question1Init());

  static Question1Cubit get(context)=>BlocProvider.of(context);

  bool select=false;
  bool select1=false;
  bool select2=false;

  void isSelected(){
    select=!select;
    emit(Question1SelectedState());
  }

  void isSelected1(){
    select1=!select1;
    emit(Question1SelectedState1());
  }

  void isSelected2(){
    select2=!select2;
    emit(Question1SelectedState2());
  }
}