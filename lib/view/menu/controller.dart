import 'package:Fitness/view/menu/states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../res.dart';

class MenuCubit extends Cubit<MenuStates> {
  MenuCubit() : super(MenuInit());

  static MenuCubit get(context) => BlocProvider.of(context);

  List trainingModel = [
    {
      'title': 'تسخين وتمرين البطن',
      'captainName': 'محمد',
      'day': 'اليوم',
      'time': '08:30',
      'image': Res.training1,
    },
    {
      'title': 'تسخين وتمرين البطن',
      'captainName': 'محمد',
      'day': 'الاحد',
      'time': '',
      'image': Res.training2,
    },
    {
      'title': 'تسخين وتمرين البطن',
      'captainName': 'محمد',
      'day': 'الاثنين',
      'time': '',
      'image': Res.training1,
    },
    {
      'title': 'تسخين وتمرين البطن',
      'captainName': 'محمد',
      'day': 'الثلاثاء',
      'time': '',
      'image': Res.training2,
    },
    {
      'title': 'تسخين وتمرين البطن',
      'captainName': 'محمد',
      'day': 'الاربعاء',
      'time': '',
      'image': Res.training1,
    },
    {
      'title': 'تسخين وتمرين البطن',
      'captainName': 'محمد',
      'day': 'الخميس',
      'time': '',
      'image': Res.training2,
    },
  ];

  List mealModel = [
    {
      'title': 'الفطار',
      'name': 'سلطة مع الخبز',
      'image': Res.meal1,
    },
    {
      'title': 'سناكس',
      'name': 'سلطة مع الخبز',
      'image': Res.meal2,
    },
    {
      'title': 'الغداء',
      'name': 'سلطة مع الخبز',
      'image': Res.meal3,
    },
    {
      'title': 'العشاء',
      'name': 'سلطة مع الخبز',
      'image': Res.meal4,
    },
  ];
}
