import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/widget/news_tile.dart';


class NewListView extends StatelessWidget {
  NewListView({super.key, required this.articles});

 final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22.0),
            child: NewsTile(
              articleModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}
