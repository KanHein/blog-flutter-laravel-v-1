import 'dart:convert';
import 'dart:io';

import 'package:blog_app/Model.dart';
import 'package:http/http.dart' as http;
class Service{
  String url = 'http://10.0.2.2:8000/api/articles';
  Future<List> getArticles(token) async{
    http.Response result = await http.get(url,
      headers: { 'Authorization': 'Bearer ' + token},
    );
    if(result.statusCode == HttpStatus.ok){
      final jsonResponse = jsonDecode(result.body);
      List articles = jsonResponse.map((i) => Model.fromJson(i)).toList();
      return articles;
    }
  }
}