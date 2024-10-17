import 'package:flutter/material.dart';
import 'package:new_app_ui/models/new_item.dart';

class NewsDetailsBody extends StatelessWidget {
  final NewsItem newsItem;
  const NewsDetailsBody({super.key, required this.newsItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  16.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(newsItem.imgUrl),
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                newsItem.auther,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'woinv  fwhoqevidwonwvn   assda d as da   dwoinv  fwhoqwoinv  fwhoqevidwonwvn   assda d as da   ds s asd a d ds  d   a ds adswoinv  fwhoqevidwonwvn   assda d as da   ds s asd a d ds  d   a ds adswoinv  fwhoqevidwonwvn   assda d as da   ds s asd a d ds  d   a ds adswoinv  fwhoqevidwonwvn   assda d as da   ds s asd a d ds  d   a ds adswoinv  fwhoqevidwonwvn   assda d as da   ds s asd a d ds  d   a ds adswoinv  fwhoqevidwonwvn   assda d as da   ds s asd a d ds  d   a ds adswoinv  fwhoqevidwonwvn   assda d as da   ds s asd a d ds  d   a ds adswoinv  fwhoqevidwonwvn   assda d as da   ds s asd a d ds  d   a ds adswoinv  fwhoqevidwonwvn   assda d as da   ds s asd a d ds  d   a ds adswoinv  fwhoqevidwonwvn   assda d as da   ds s asd a d ds  d   a ds adswoinv  fwhoqevidwonwvn   assda d as da   ds s asd a d ds  d   a ds adswoinv  fwhoqevidwonwvn   assda d as da   ds s asd a d ds  d   a ds adswoinv  fwhoqevidwonwvn   assda d as da   ds s asd a d ds  d   a ds adswoinv  fwhoqevidwonwvn   assda d as da   ds s asd a d ds  d   a ds adswoinv  fwhoqevidwonwvn   assda d as da   ds s asd a d ds  d   a ds adswoinv  fwhoqevidwonwvn   assda d as da   ds s asd a d ds  d   a ds adswoinv  fwhoqevidwonwvn   assda d as da   ds s asd a d ds  d   a ds adsevidwonwvn   assda d as da   ds s asd a d ds  d   a ds adswoinv  fwhoqevidwonwvn   assda d as da   ds s asd a d ds  d   a ds adswoinv  fwhoqevidwonwvn   assda d as da   ds s asd a d ds  d   a ds adswoinv  fwhoqevidwonwvn   assda d as da   ds s asd a d ds  d   a ds adswoinv  fwhoqevidwonwvn   assda d as da   ds s asd a d ds  d   a ds adswoinv  fwhoqevidwonwvn   assda d as da   ds s asd a d ds  d   a ds adswoinv  fwhoqevidwonwvn   assda d as da   ds s asd a d ds  d   a ds adss s asd a d ds  d   a ds ads  ad  da a d ads  ads  das a sd ads  dsa das  ads ads  ad s d d a ads dsa  dsa das a ds ads  ds ads a ds ds da  da  da a d ds a dad weq das  a ds a ds das ad  a ds ads  ad  da a d ads  ads  das a sd ads  dsa das  ads ads  ad s d d a ads dsa  dsa das a ds ads  ds ads a ds ds da  da  da a d ds a dad weq das  a ds a ds das ad ',
            style: Theme.of(context).textTheme.bodyLarge,
          )
        ],
      ),
    );
  }
}
