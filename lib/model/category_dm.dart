import 'package:flutter/material.dart';
import 'package:news/MyTheme.dart';

class CategoryDM{

  String id;
  String title ;
  String imagePath;
  Color color ;

  CategoryDM({required this.id , required this.title , required this.imagePath , required this.color});


  static List<CategoryDM> getCategories(){
    /*
     entertainment         technolog
     */
    return [
     CategoryDM(id: 'sports', title: 'Sports', imagePath: 'assets/images/sports.png', color: MyTheme.redColor),
      CategoryDM(id: 'science', title: 'Science', imagePath: 'assets/images/science.png', color: MyTheme.yellowColor),
      CategoryDM(id: 'health', title: 'Health', imagePath: 'assets/images/health.png', color: MyTheme.purpleColor),
      CategoryDM(id: 'business', title: 'Business', imagePath: 'assets/images/bussines.png', color: MyTheme.brownColor),
      CategoryDM(id: 'entertainment', title: 'Entertainment', imagePath: 'assets/images/environment.png', color: MyTheme.brownColor),
      CategoryDM(id: 'general', title: 'General', imagePath: 'assets/images/Politics.png', color: MyTheme.blueColor),
    ];
  }

}
