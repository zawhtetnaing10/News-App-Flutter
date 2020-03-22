import 'package:flutter/material.dart';
import 'package:news_app_flutter/utils/constants.dart';
import 'package:news_app_flutter/utils/dimensions.dart';

class PopularNewsCell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class PopularNewsInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "DESIGN",
          style: TextStyle(
            color: Colors.red,
          ),
        ),
        SizedBox(height: MARGIN_MEDIUM),
        Text(
          "Most Awaited - Figma Launches Plugin",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: TEXT_REGULAR_2X,
          ),
        ),
        SizedBox(height: MARGIN_MEDIUM),
        Row(
          children: <Widget>[
            IconAndText(icon: Icons.access_time, text: "14 secs ago"),
            SizedBox(width: MARGIN_LARGE),
            IconAndText(icon: Icons.thumb_up, text: "786"),
          ],
        )
      ],
    );
  }
}

class IconAndText extends StatelessWidget {
  final IconData icon;
  final String text;

  IconAndText({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          size: MARGIN_MEDIUM_2,
          color: Colors.grey[600],
        ),
        SizedBox(width: MARGIN_SMALL),
        Text(
          text,
          style: TextStyle(
            color: Colors.grey[600],
          ),
        )
      ],
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
