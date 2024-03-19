import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/model/SourceResponse.dart';

import '../model/NewsResponse.dart';
import 'api_constants.dart';


class ApiManager{

static Future<SourceResponse> getScources(String categoryId) async {

  Uri url = Uri.https(ApiConstants.baseUrl , ApiConstants.apiSources,{
    'apiKey': '9505b51a0b3b4833a59271529e0e7949',
    'category' : categoryId
  });
  try{
    var response = await http.get(url);
    var responseBody = response.body ;       // String
    var json = jsonDecode(responseBody);    //String => json
    return SourceResponse.fromJson(json) ;         // json => object
  }catch (e){
    throw e ;
  }


}

/*
https://newsapi.org/v2/everything?q=bitcoin&apiKey=9505b51a0b3b4833a59271529e0e7949
 */
static Future<NewsResponse> getNewsBySourceId(String sourceId)async{
  Uri url = Uri.https(ApiConstants.baseUrl , ApiConstants.apiNews,{
    'apiKey': '9505b51a0b3b4833a59271529e0e7949',
    'sources' : sourceId
  });
 try{
  var response = await http.get(url);
  var responseBody = response.body ;
  var json= jsonDecode(responseBody);
  return NewsResponse.fromJson(json);
}catch(e){
   throw e ;
 }

}


}