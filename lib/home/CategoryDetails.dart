import 'package:flutter/material.dart';
import 'package:news/MyTheme.dart';
import 'package:news/api/api_manger.dart';
import 'package:news/model/category_dm.dart';
import 'package:news/tab/tab_widget.dart';
import 'package:news/model/SourceResponse.dart';

class CategoryDetails extends StatefulWidget{
  static const String routeName = 'CategoryDetails' ;

  CategoryDM category ;
  CategoryDetails({required this.category});

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    return  FutureBuilder<SourceResponse?>(
              future: ApiManager.getScources(widget.category.id),

              builder: (context , snapshot){
                if(snapshot.connectionState == ConnectionState.waiting){
                  return Center(
                    child:CircularProgressIndicator(
                      backgroundColor: MyTheme.primaryLightColor,
                    ),
                  );
                }else if (snapshot.hasError){
                  return Column(
                    children: [
                      Text('Something went wrong'),
                      ElevatedButton(onPressed: (){
                        ApiManager.getScources(widget.category.id);
                      }, child: Text('Try Again'))
                    ],
                  );
                }
                if(snapshot.data?.status !='ok'){
                  return Column(
                    children: [
                      Text(snapshot.data!.message!),
                      ElevatedButton(onPressed: (){
                        ApiManager.getScources(widget.category.id);
                        setState(() {

                        });

                      }, child: Text('Try Again'))
                    ],
                  );
                }
                var sourceList = snapshot.data?.sources ?? [] ;
                return TabWidget(sourcesList: sourceList);

              }
          );
  }
}