import 'package:flutter/material.dart';
import 'package:news/MyTheme.dart';

class SettingTab extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('gg' , style: Theme.of(context).textTheme.titleLarge,),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){


            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: MyTheme.primaryLightColor
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('dsdd',
                    style: Theme.of(context).textTheme.titleMedium,),
                  Icon(Icons.arrow_drop_down, size: 50,)
                ],
              ),
            ),
          ),
          SizedBox(height: 30,),
          Text('sdsfds' , style: Theme.of(context).textTheme.titleLarge,),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){


            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: MyTheme.primaryLightColor
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('fsdfs' ,
                    style: Theme.of(context).textTheme.titleMedium,),
                  Icon(Icons.arrow_drop_down, size: 50,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}