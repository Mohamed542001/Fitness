import 'package:Fitness/view/NewAccQuestion5/states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Question5Cubit extends Cubit<Question5States>{
  Question5Cubit() : super(Question5Init());

  static Question5Cubit get(context)=>BlocProvider.of(context);

  int selectedDay;
  String radioSelect;
  String radioSelect1;
  bool check=false;
  bool check1=false;
  bool check2=false;
  bool check3=false;
  bool check4=false;
  bool check5=false;
  bool check6=false;

  void radioChoice(val){
    radioSelect=val;
    emit(Question5RadioCheckState());
  }
  void radioChoice1(val){
    radioSelect1=val;
    emit(Question5RadioCheckState1());
  }

  void isSelected(val){
    selectedDay=val;
    emit(Question5SelectedState());
  }
  void isChecked(val){
    check=val;
    emit(Question5CheckedState());
  }
  void isChecked1(val){
    check1=val;
    emit(Question5CheckedState1());
  }
  void isChecked2(val){
    check2=val;
    emit(Question5CheckedState2());
  }
  void isChecked3(val){
    check3=val;
    emit(Question5CheckedState3());
  }
  void isChecked4(val){
    check4=val;
    emit(Question5CheckedState4());
  }
  void isChecked5(val){
    check5=val;
    emit(Question5CheckedState5());
  }
  void isChecked6(val){
    check6=val;
    emit(Question5CheckedState6());
  }



}