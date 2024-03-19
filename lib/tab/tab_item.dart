import 'package:flutter/material.dart';
import 'package:news/MyTheme.dart';

import '../model/SourceResponse.dart';

class TabItem extends StatelessWidget{
  bool isSelected ;
  Source source ;

  TabItem({ required this.source ,required this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: isSelected ? MyTheme.primaryLightColor : Colors.transparent ,
        border: Border.all(
          color: MyTheme.primaryLightColor,
          width: 2
        )
      ),
      child: Text(source.name ?? '' ,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
        color: isSelected ? MyTheme.whiteColor : MyTheme.primaryLightColor,
        fontSize: 18
      ),
      ),
    );
  }
}