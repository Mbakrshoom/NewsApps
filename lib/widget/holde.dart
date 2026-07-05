// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:news_app/main.dart';
// import 'package:news_app/model/article_model.dart';
// import 'package:news_app/widget/news_tile.dart';

// import '../services/news_services.dart';

// class NewListView extends StatefulWidget {
//   const NewListView({
//     super.key,
//   });

//   @override
//   State<NewListView> createState() => _NewListViewState();
// }

// class _NewListViewState extends State<NewListView> {
//   List<ArticleModel> articles = [];
//   bool isLoading = true;
//   @override
//   initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articles = await NewsService(Dio()).getNews();
//     isLoading = false;
//     setState(() {});
//   }



//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? const SliverFillRemaining(
//             hasScrollBody: false,
//             child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: articles.length,
//               (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.only(bottom: 22.0),
//                   child: NewsTile(
//                     articleModel: articles[index],
//                   ),
//                 );
//               },
//             ),
//           );
//   }
// }
