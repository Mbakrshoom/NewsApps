import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';
import '../services/news_services.dart';
import 'newsListView.dart';

class NewsListViewBulder extends StatefulWidget {
  const NewsListViewBulder({
    super.key,
    required this.category,
  });
  final String category;

  @override
  State<NewsListViewBulder> createState() => _NewsListViewBulderState();
}

class _NewsListViewBulderState extends State<NewsListViewBulder> {
  // List<ArticleModel> articles = [];
  var future;
  initState() {
    super.initState();
    future = NewsService(Dio()).getTopHeadlines(category: widget.category);
    // NewsService(Dio()).getTopHeadlines(category: 'general').then((value) {
    //   setState(() {
    //     articles = value;
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          return NewListView(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Center(
                child: Text(
              "No News Found",
              style: TextStyle(fontSize: 20),
            )),
          );
        } else {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      }),
    );
  }
}
