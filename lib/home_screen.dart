import 'package:flutter/material.dart';
import 'package:news/drawer/setting_tab.dart';
import 'package:news/home/CategoryDetails.dart';
import 'package:news/home/category_fragment.dart';
import 'package:news/model/category_dm.dart';

import 'MyTheme.dart';
import 'drawer/home_drawer.dart';

class HomeScreen extends StatefulWidget{
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: MyTheme.whiteColor,
          child: Image.asset('assets/images/pattern.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: MyTheme.primaryLightColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)
                )
            ),
            title: Text( selectedCategory == HomeDrawer.setting ?
                'Setting' :
                selectedCategory ==null ?
              'NewsApp' : selectedCategory!.title ,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          drawer : Drawer(
            child: HomeDrawer(onSideMenuItemClick:onSideMenuItemClick),
          ),
          body: selectedMenuItem == HomeDrawer.setting ?
          SettingTab() :
          selectedCategory ==null ?
          CategoryFragment(onCategoryIconClick:onCategoryItemClick) :
          CategoryDetails(category: selectedCategory!),
        )
      ]
    );
  }

  CategoryDM? selectedCategory;

  void onCategoryItemClick(CategoryDM newSelectedCategory){
    selectedCategory = newSelectedCategory ;
    setState(() {

    });
  }
int selectedMenuItem = HomeDrawer.categories ;
  void onSideMenuItemClick(int newSelectedMenuItem){
    selectedMenuItem = newSelectedMenuItem ;
    selectedCategory = null ;
    Navigator.pop(context);
    setState(() {

    });
  }
}