import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';

import 'category_card.dart';

class Category_listview extends StatelessWidget {
  const Category_listview({
    super.key,
  });
  final List<Category_model> categories = const [
    Category_model(image: 'assets/business.png', categoryName: 'Business'),
    Category_model(
        image: 'assets/entertaiment.avif', categoryName: 'Entertainment'),
    Category_model(image: 'assets/general.jpg', categoryName: 'General'),
    Category_model(image: 'assets/health.avif', categoryName: 'Health'),
    Category_model(image: 'assets/science.avif', categoryName: 'Science'),
    Category_model(image: 'assets/sports.png', categoryName: 'Sports'),
    Category_model(image: 'assets/technology.jpeg', categoryName: 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              categores: categories[index],
            );
          }),
    );
  }
}
