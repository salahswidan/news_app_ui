class NewsItem {
  final int id;
  final String title;
  final String imgUrl;
  final String category;
  final String auther;
  final String time;
  final bool isFavorite;

  NewsItem(
      {required this.id,
      required this.title,
      required this.imgUrl,
      required this.category,
      required this.auther,
      this.time = ' 8 minutes age',
      this.isFavorite = false});

  NewsItem copyWith({
    int? id,
    String? title,
    String? imgUrl,
    String? category,
    String? auther,
    String? time,
    bool? isFavorite,
  }) {
    return NewsItem(
      id: id ?? this.id,
      title: title ?? this.title,
      imgUrl: imgUrl ?? this.imgUrl,
      category: category ?? this.category,
      auther: auther ?? this.auther,
      time: time ?? this.time,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}

List<NewsItem> news = [
  NewsItem(
      id: 1,
      title: 'This is a freaking title here',
      imgUrl:
          'https://images.pexels.com/photos/159652/table-food-book-newspaper-159652.jpeg?auto=compress&cs=tinysrgb&w=600',
      category: 'Sports',
      auther: 'CNN'),
  NewsItem(
      id: 2,
      title: 'This is a very good title here',
      imgUrl:
          'https://images.pexels.com/photos/2538121/pexels-photo-2538121.jpeg?auto=compress&cs=tinysrgb&w=600',
      category: 'Social',
      auther: 'BBC'),
  NewsItem(
      id: 3,
      title: 'This is a wow title here',
      imgUrl:
          'https://images.pexels.com/photos/3278364/pexels-photo-3278364.jpeg?auto=compress&cs=tinysrgb&w=600',
      category: 'medical',
      auther: 'National'),
  NewsItem(
      id: 4,
      title: 'This is a nice title here',
      imgUrl:
          'https://images.pexels.com/photos/902194/pexels-photo-902194.jpeg?auto=compress&cs=tinysrgb&w=600',
      category: 'Political',
      auther: 'CNN'),
];
