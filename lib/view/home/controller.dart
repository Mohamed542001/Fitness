import 'package:Fitness/res.dart';
import 'package:Fitness/view/home/states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates>{
  HomeCubit() : super(HomeInit());

  static HomeCubit get(context)=>BlocProvider.of(context);

  bool clicked=false;

  void isClicked(){
    clicked=!clicked;
    emit(HomeClickedState());
  }

  List homeCardData=[
    {
      'title':'هل تعلم ان للتأمل فوائد صحية؟',
      'text': 'اذا كان الضغط يشعرك بالتوتر والاضطراب والقلق,\nفكر في تجربة التأمل.\nيمكن لأي فرد ممارسة التأمل, حيث أنه بسيط وغير مكلف\nولا يتطلب الحصول علي أي معدات خاصه',
      'image': Res.training1,
    },
    {
      'title':'هل تعلم ان للتأمل فوائد صحية؟',
      'text': 'اذا كان الضغط يشعرك بالتوتر والاضطراب والقلق,\nفكر في تجربة التأمل.\nيمكن لأي فرد ممارسة التأمل, حيث أنه بسيط وغير مكلف\nولا يتطلب الحصول علي أي معدات خاصه',
      'image': Res.training2,
    },
    {
      'title':'هل تعلم ان للتأمل فوائد صحية؟',
      'text': 'اذا كان الضغط يشعرك بالتوتر والاضطراب والقلق,\nفكر في تجربة التأمل.\nيمكن لأي فرد ممارسة التأمل, حيث أنه بسيط وغير مكلف\nولا يتطلب الحصول علي أي معدات خاصه',
      'image': Res.training1,
    },
    {
      'title':'هل تعلم ان للتأمل فوائد صحية؟',
      'text': 'اذا كان الضغط يشعرك بالتوتر والاضطراب والقلق,\nفكر في تجربة التأمل.\nيمكن لأي فرد ممارسة التأمل, حيث أنه بسيط وغير مكلف\nولا يتطلب الحصول علي أي معدات خاصه',
      'image': Res.training2,
    },

  ];
}