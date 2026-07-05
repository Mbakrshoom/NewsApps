import 'package:flutter/material.dart';
import 'package:news_app/widget/news_list_view_bulder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            category,
            style: const TextStyle(color: Colors.black),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            NewsListViewBulder(
              category: category,
            ),
          ],
        ));
  }
}
