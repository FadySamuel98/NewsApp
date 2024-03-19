import 'package:flutter/material.dart';
import 'package:news/MyTheme.dart';
import 'package:news/drawer/categories_list.dart';
import 'package:news/drawer/setting_tab.dart';

class HomeDrawer extends StatelessWidget{
  static const int categories = 1 ;
  static const int setting = 2 ;
  Function onSideMenuItemClick ;
  HomeDrawer({required this.onSideMenuItemClick});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.1),
          color: MyTheme.primaryLightColor,
            child:
            Text('News App', style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),textAlign: TextAlign.center,)),
        SizedBox(height: 15,),
        InkWell(
          onTap: (){
            onSideMenuItemClick(categories);
          },
          child: Row(
            children: [
              Icon(Icons.list),
              SizedBox(width: 10,),
              Text('Categories', style: Theme.of(context).textTheme.titleMedium,)

            ],
          ),
        ),
        SizedBox(height: 15,),
        InkWell(
          onTap: (){
            onSideMenuItemClick(HomeDrawer.setting);
          },
          child: Row(
            children: [
              Icon(Icons.settings),
              SizedBox(width: 10,),
              Text('Setting', style: Theme.of(context).textTheme.titleMedium,)

            ],
          ),
        ),
        
      ],
    );
  }
}