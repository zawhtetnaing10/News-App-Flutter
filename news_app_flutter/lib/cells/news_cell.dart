import 'package:flutter/material.dart';
import 'package:news_app_flutter/utils/constants.dart';
import 'package:news_app_flutter/utils/dimensions.dart';
import 'package:news_app_flutter/widgets/profile_image.dart';

class NewsCell extends StatelessWidget {
  final cellWidth;

  NewsCell({this.cellWidth});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(MARGIN_MEDIUM_2),
      ),
      child: Container(
        width: cellWidth,
        child: Stack(
          children: <Widget>[
            HeroImage(),
            TransparentOverlay(),
            NewsOverlay(),
          ],
        ),
      ),
    );
  }
}

class TransparentOverlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(0, 0, 0, 0.3),
    );
  }
}

class NewsOverlay extends StatelessWidget {
  const NewsOverlay({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MARGIN_LARGE),
      child: Column(
        children: <Widget>[
          BookMarkButton(),
          Spacer(),
          NewsInfo(),
        ],
      ),
    );
  }
}

class NewsInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: MARGIN_LARGE),
      child: Column(
        children: <Widget>[
          NewsTitle(),
          SizedBox(height: MARGIN_MEDIUM),
          PublisherInfo()
        ],
      ),
    );
  }
}

class PublisherInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ProfileImage(),
        SizedBox(width: MARGIN_MEDIUM_2),
        PublisherAndTime()
      ],
    );
  }
}

class PublisherAndTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          "Ted Milano",
          style: TextStyle(
            color: Colors.white,
            fontSize: TEXT_REGULAR_2X,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: MARGIN_MEDIUM),
        Row(
          children: <Widget>[
            Icon(
              Icons.access_time,
              size: MARGIN_MEDIUM_3,
              color: Colors.grey[300],
            ),
            SizedBox(width: MARGIN_SMALL),
            Text(
              "25 sec ago",
              style: TextStyle(
                color: Colors.grey[300],
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        )
      ],
    );
  }
}

class NewsTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Why The Freelance Life May Get Easier",
      style: TextStyle(
        color: Colors.white,
        fontSize: NEWS_CELL_TITLE_TEXT_SIZE,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class BookMarkButton extends StatelessWidget {
  const BookMarkButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Icon(
          Icons.bookmark_border,
          color: Colors.white,
          size: MARGIN_XLARGE,
        )
      ],
    );
  }
}

class HeroImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image(
        fit: BoxFit.cover,
        image: NetworkImage(DUMMY_NEWS_IMAGE),
      ),
    );
  }
}
