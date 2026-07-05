import 'package:dio/dio.dart';

import '../model/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);
  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
  final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?category=$category&apiKey=8104159c372143f59ab46b723a554f1b');
  
  Map<String, dynamic> jsonData = response.data;
  List<dynamic> articles = jsonData['articles'];
  List<ArticleModel> articleslList = [];
  
  for (var article in articles) {
    ArticleModel articleModel = ArticleModel.fromJson(article);
    articleslList.add(articleModel);
  }
  return articleslList;
}  catch (e) {
    
      return [];
  
}
  }
}
