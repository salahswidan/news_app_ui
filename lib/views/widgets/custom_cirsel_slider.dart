import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app_ui/models/new_item.dart';
import 'package:new_app_ui/views/pages/news_details_page.dart';

class CustomCirselSlider extends StatefulWidget {
  const CustomCirselSlider({super.key});

  @override
  State<CustomCirselSlider> createState() => _CustomCirselSliderState();
}

class _CustomCirselSliderState extends State<CustomCirselSlider> {
  final _controller = CarouselSliderController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = news
        .map((item) => InkWell(
              onTap: () {
                final index = news.indexOf(item);
                Navigator.of(context, rootNavigator: true).push(
                    CupertinoPageRoute(
                        builder: (_) => NewsDetailsPage(index: index)));
              },
              child: Container(
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(24.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.network(item.imgUrl,
                            fit: BoxFit.cover, width: 1000.0),
                        Positioned(
                          top: 10,
                          left: 20,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                item.category,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  '${item.auther}  • ${item.time}',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(200, 0, 0, 0),
                                      Color.fromARGB(0, 0, 0, 0)
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 20.0),
                                child: Text(
                                  item.title,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();

    return Column(
      children: [
        CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: news.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: _current == entry.key ? 25.0 : 12,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    borderRadius:
                        _current == entry.key ? BorderRadius.circular(8) : null,
                    shape: _current == entry.key
                        ? BoxShape.rectangle
                        : BoxShape.circle,
                    color: _current == entry.key
                        ? Theme.of(context).primaryColor
                        : Colors.grey.withOpacity(0.3)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
