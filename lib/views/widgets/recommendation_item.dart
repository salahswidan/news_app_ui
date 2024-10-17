import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_app_ui/models/new_item.dart';

class RecommendationItem extends StatelessWidget {
  final NewsItem newsItem;
  const RecommendationItem({super.key, required this.newsItem});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            newsItem.imgUrl,
            height: 100,
            width: 150,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                newsItem.category,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.grey,
                    ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(newsItem.title,
                  style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(
                height: 8,
              ),
              Text(
                '${newsItem.auther} • ${newsItem.time}',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.grey,
                    ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
