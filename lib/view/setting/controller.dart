import 'package:Fitness/view/setting/states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingCubit extends Cubit<SettingStates>{
  SettingCubit() : super(SettingInit());

  static SettingCubit get(context)=>BlocProvider.of(context);

  List listInformation=[
    {
      'titleName':'التركيز علي',
      'textName':'التمارين',
    },
    {
      'titleName':'الهدف',
      'textName':'خسارة الوزن',
    },
    {
      'titleName':'مكان التمرين',
      'textName':'البيت',
    },
    {
      'titleName':'السن',
      'textName':'20',
    },
    {
      'titleName':'الطول',
      'textName':'160',
    },
    {
      'titleName':'الوزن',
      'textName':'60',
    },
    {
      'titleName':'الوزن المراد الوصول اليه',
      'textName':'55',
    },
    {
      'titleName':'عدد ايام التمرين',
      'textName':'5',
    },
    {
      'titleName':'النظام الغذائي',
      'textName':'عادي',
    },
    {
      'titleName':'استخدام ادوات',
      'textName':'عدم استخدام ادوات',
    },
  ];
}