import 'package:flutter/material.dart';
import 'package:new_app_ui/models/new_item.dart';
import 'package:new_app_ui/views/widgets/app_bar_icon.dart';

class NewsDetailsAppBar extends StatefulWidget {
  final int index;
  const NewsDetailsAppBar({super.key, required this.index});

  @override
  State<NewsDetailsAppBar> createState() => _NewsDetailsAppBarState();
}

class _NewsDetailsAppBarState extends State<NewsDetailsAppBar> {
 

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SliverAppBar(
      expandedHeight: size.height * 0.4,
      // leading: AppBarIcon(
      //   icon: Icons.chevron_left,
      //   iconSize: 35,
      // ),
      actions: [
        AppBarIcon(
          icon: news[widget.index].isFavorite ? Icons.bookmark : Icons.bookmark_border_outlined,
          onTap: () {
            setState(() {
              news[widget.index] =news[widget.index]
                  .copyWith(isFavorite: !news[widget.index].isFavorite);
            });
          },
        ),
        SizedBox(
          width: 6,
        ),
        AppBarIcon(icon: Icons.menu),
        SizedBox(
          width: 6,
        ),
      ],
      iconTheme: IconThemeData(color: Colors.white),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                news[widget.index].imgUrl,
                fit: BoxFit.cover,
              ),
            ),
            // Positioned.fill(
            //   child: Opacity(
            //     opacity: 0.15,
            //     child: DecoratedBox(
            //         decoration: BoxDecoration(
            //       color: Colors.black,
            //     )),
            //   ),
            // ),
            Positioned(
              bottom: 50,
              left: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        news[widget.index].category,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: size.width * 0.9,
                    child: Text(
                      news[widget.index].title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 3,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '${news[widget.index].auther}  • ${news[widget.index].time}',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
        stretchModes: [
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
        ],
      ),
      pinned: true,
      collapsedHeight: size.height * 0.1,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: Container(
          height: 30,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(16),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(36),
              ),
            ),
            height: 40,
            width: 40,
          ),
        ),
      ),
    );
  }
}
