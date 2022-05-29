import 'package:Fitness/view/NewAccount/states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewAccCubit extends Cubit<NewAccStates>{
  NewAccCubit() : super(NewAccInit());

  static NewAccCubit get(context)=>BlocProvider.of(context);

  String selectedGender;

  void isSelected(val){
    selectedGender=val;
    emit(NewAccSelectedState());
  }


}