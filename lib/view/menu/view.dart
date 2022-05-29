import 'package:Fitness/view/menu/components/MealCard.dart';
import 'package:Fitness/view/menu/components/TrainingCard.dart';
import 'package:Fitness/widgets/AppColors.dart';
import 'package:Fitness/widgets/CustomText.dart';
import 'package:Fitness/widgets/DefaultAppBar.dart';
import 'package:flutter/material.dart';

class MenuView extends StatefulWidget {
  const MenuView({Key key}) : super(key: key);

  @override
  _MenuViewState createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView>
    with SingleTickerProviderStateMixin {
  void initState() {
    myController = new TabController(length: 2, vsync: this);

    super.initState();
  }

  TabController myController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'النظام اليومي',
        elev: 0,
        size: 100,
        back: false,
        bottom: TabBar(
          controller: myController,
          isScrollable: true,
          indicatorWeight: 4,
          indicatorPadding: EdgeInsets.symmetric(horizontal: 50),
          indicatorColor: AppColors.primary,
          labelColor: AppColors.primary,
          unselectedLabelColor: AppColors.formTextColor,
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          tabs: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Tab(
                child: CustomText(
                  title: 'التمارين',
                  color: AppColors.primary,
                  size: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Tab(
                child: CustomText(
                  title: 'الوجبات',
                  color: AppColors.primary,
                  size: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: AppColors.white,
        child: TabBarView(
          controller: myController,
          children: [
            TrainingCard(),
            MealCard(),
          ],
        ),
      ),
    );
  }
}
