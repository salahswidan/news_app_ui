import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app_ui/models/new_item.dart';
import 'package:new_app_ui/views/pages/custom_botton_navbar.dart';
import 'package:new_app_ui/views/pages/news_details_page.dart';
import 'package:new_app_ui/views/widgets/app_bar_icon.dart';
import 'package:new_app_ui/views/widgets/custom_cirsel_slider.dart';
import 'package:new_app_ui/views/widgets/home_title_widget.dart';
import 'package:new_app_ui/views/widgets/recommendation_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              const HomeTitleWidget(
                title: 'Breaking News',
              ),
              const SizedBox(
                height: 8,
              ),
              const CustomCirselSlider(),
              const SizedBox(
                height: 16,
              ),
              const HomeTitleWidget(
                title: 'Recommendation',
              ),
              const SizedBox(
                height: 8,
              ),
              ...news
                  .map((newsItem) => Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: InkWell(
                            onTap: () {
                              final index = news.indexOf(newsItem);
                              Navigator.of(context, rootNavigator: true)
                                  .push(
                                    CupertinoPageRoute(
                                      builder: (_) =>
                                          NewsDetailsPage(index: index),
                                    ),
                                  )
                                  .then((value) => setState(() {}));
                            },
                            child: RecommendationItem(newsItem: newsItem)),
                      ))
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
