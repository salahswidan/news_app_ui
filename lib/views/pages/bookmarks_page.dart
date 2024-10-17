import 'package:flutter/material.dart';
import 'package:new_app_ui/models/new_item.dart';
import 'package:new_app_ui/views/widgets/recommendation_item.dart';

class BookmarksPage extends StatelessWidget {
  const BookmarksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final favoritedItems = news.where((element) => element.isFavorite);
    if (favoritedItems.isEmpty) {
      return Center(
        child: Text('No Bookmarks Available ',style: Theme.of(context).textTheme.titleLarge,),
      );
    }
    return SingleChildScrollView(
      child: Column(
        children: favoritedItems
            .map(
              (favoritedItems) => Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: RecommendationItem(newsItem: favoritedItems),
              ),
            )
            .toList(),
      ),
    );
  }
}
