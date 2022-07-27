import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_dicoding/etalase_food.dart';
import 'package:flutter_project_dicoding/etalase_food_item.dart';

class EtalaseFoodScreen extends StatefulWidget {
  const EtalaseFoodScreen({Key? key}) : super(key: key);

  @override
  _EtalaseFoodScreenState createState() => _EtalaseFoodScreenState();
}

class _EtalaseFoodScreenState extends State<EtalaseFoodScreen> with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late TabController tabController;
  int currTab = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
        length: 4,
        vsync: this,
        animationDuration: const Duration(milliseconds: 500));
    tabController.addListener(handleTabSelection);
  }

  void handleTabSelection() {
    if (tabController.indexIsChanging ||
        tabController.index != tabController.previousIndex) {
      setState(() {
        currTab = tabController.index;
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Etalase Food'),
        backgroundColor: Colors.lightGreen,
      ),
      body: SafeArea(
        child: DefaultTabController(length: 4, child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 16, bottom: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: TabBar(
                isScrollable: true,
                indicatorPadding: EdgeInsets.zero,
                labelPadding: EdgeInsets.symmetric(horizontal: 8),
                indicatorColor: Colors.transparent,
                controller: tabController,
                tabs: [
                  _tabItem(0, "All"),
                  _tabItem(1, "Indonesian"),
                  _tabItem(2, "Korean"),
                  _tabItem(3, "Japanese")
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
                    controller: tabController,
                    children: [
                      FoodTabBarViews(item: foodItem),
                      FoodTabBarViews(item: foodItemIndonesian),
                      FoodTabBarViews(item: foodItemKorean),
                      FoodTabBarViews(item: foodItemJapanese),
            ]))
          ],
        )),
      ),
    );
  }

  Widget _tabItem(int index, String title){
    Color colTab;
    Color colText;
    Color border;

    if (index == currTab) {
      colTab = Colors.blueGrey;
      colText = Colors.white;
      border = Colors.transparent;
    } else {
      colTab = Colors.white;
      colText = Colors.black54;
      border = const Color(0xff979797);
    }
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 28),
      decoration: BoxDecoration(
          color: colTab,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: border)),
      child: Center(
        child: Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: colText,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            )),
      ),
    );
  }
}