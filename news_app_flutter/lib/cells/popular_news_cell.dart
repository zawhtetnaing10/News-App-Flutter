import 'package:flutter/material.dart';
import 'package:news_app_flutter/utils/constants.dart';
import 'package:news_app_flutter/utils/dimensions.dart';
import 'package:news_app_flutter/widgets/popular_news_info.dart';

class PopularNewsCell extends StatelessWidget {
  final VoidCallback onTapPopularNews;

  PopularNewsCell({this.onTapPopularNews});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapPopularNews,
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            PopularNewsImage(),
            SizedBox(width: MARGIN_XLARGE),
            Expanded(
              child: PopularNewsInfo(),
            ),
          ],
        ),
      ),
    );
  }
}

class PopularNewsImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(MARGIN_MEDIUM),
      ),
      child: Image(
        width: HOME_SCREEN_POPULAR_NEWS_IMAGE_SIZE,
        height: HOME_SCREEN_POPULAR_NEWS_IMAGE_SIZE,
        image: NetworkImage(DUMMY_NEWS_IMAGE),
        fit: BoxFit.cover,
      ),
    );
  }
}
