import 'package:Fitness/view/NewAccQuestion4/states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Question4Cubit extends Cubit<Question4States>{
  Question4Cubit() : super(Question4Init());

  static Question4Cubit get(context)=>BlocProvider.of(context);

  double value=18;
  double value1=150;
  double value2=55;
  double value3=60;

  void isChanges(val){
    value=val;
    emit(Question4ChangedState());
  }
  void isChanges1(val){
    value1=val;
    emit(Question4ChangedState1());
  }
  void isChanges2(val){
    value2=val;
    emit(Question4ChangedState2());
  }
  void isChanges3(val){
    value3=val;
    emit(Question4ChangedState3());
  }



}