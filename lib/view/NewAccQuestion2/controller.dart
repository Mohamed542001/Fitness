import 'package:Fitness/view/NewAccQuestion2/states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Question2Cubit extends Cubit<Question2States>{
  Question2Cubit() : super(Question2Init());

  static Question2Cubit get(context)=>BlocProvider.of(context);

  bool select=false;
  bool select1=false;
  bool select2=false;

  void isSelected(){
    select=!select;
    emit(Question2SelectedState());
  }

  void isSelected1(){
    select1=!select1;
    emit(Question2SelectedState1());
  }

  void isSelected2(){
    select2=!select2;
    emit(Question2SelectedState2());
  }
}