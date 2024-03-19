import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/drawer/categories_list.dart';
import 'package:news/home/category_item.dart';
import 'package:news/model/category_dm.dart';

class CategoryFragment extends StatelessWidget{
  var categoriesList = CategoryDM.getCategories();
  Function onCategoryIconClick ;
  CategoryFragment({required this.onCategoryIconClick});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('pick your category \n of interest', style: Theme.of(context).textTheme.titleLarge,),
          SizedBox(height: 15,),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15
                ),
                 itemBuilder: (context , index){
                  return InkWell(
                    onTap: (){
                      onCategoryIconClick(categoriesList[index]);
                    },
                      child: CategoryItem(category: categoriesList[index], index: index));
                 },
              itemCount: categoriesList.length,
            ),
          ),
          

        ],
      ),
    );
  }
}