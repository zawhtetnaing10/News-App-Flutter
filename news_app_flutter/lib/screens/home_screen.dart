import 'package:flutter/material.dart';
import 'package:news_app_flutter/cells/news_cell.dart';
import 'package:news_app_flutter/cells/popular_news_cell.dart';
import 'package:news_app_flutter/utils/constants.dart';
import 'package:news_app_flutter/utils/dimensions.dart';
import 'package:news_app_flutter/widgets/profile_image.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      left: false,
      right: false,
      bottom: false,
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            HomeHeader(),
            Expanded(
              child: ListView(
                children: <Widget>[
                  SizedBox(height: MARGIN_XLARGE),
                  TopNewsList(),
                  SizedBox(height: MARGIN_XLARGE),
                  PopularNewsSection(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PopularNewsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        PopularNewsHeader(),
        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.fromLTRB(
              MARGIN_XLARGE, MARGIN_LARGE, MARGIN_XLARGE, MARGIN_XXLARGE),
          itemBuilder: (context, index) => PopularNewsCell(),
          separatorBuilder: (context, index) => SizedBox(height: MARGIN_XLARGE),
          itemCount: 20,
        )
      ],
    );
  }
}

class PopularNewsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: MARGIN_XLARGE),
      child: Row(
        children: <Widget>[
          Text(
            "Popular",
            style: TextStyle(
              color: Colors.black,
              fontSize: TEXT_HEADING_1X,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Text(
            "Show all",
            style: TextStyle(
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}

class TopNewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: HOME_SCREEN_TOP_NEWS_ITEM_HEIGHT,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: MARGIN_MEDIUM_3),
        padding: EdgeInsets.only(left: MARGIN_XLARGE, right: MARGIN_XLARGE),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => NewsCell(
          cellWidth: MediaQuery.of(context).size.width -
              HOME_SCREEN_TOP_NEWS_CELL_WIDTH_SUBTRACTION,
        ),
      ),
    );
  }
}

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: MARGIN_XLARGE,
        right: MARGIN_XLARGE,
        top: HOME_HEADER_MARGIN_TOP,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          DateAndTitle(),
          Spacer(),
          ProfileImage(),
        ],
      ),
    );
  }
}

class DateAndTitle extends StatelessWidget {
  const DateAndTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Sunday 4 August ",
          style: TextStyle(
            color: Colors.red,
            fontSize: TEXT_REGULAR_2X,
          ),
        ),
        SizedBox(height: MARGIN_MEDIUM),
        Text(
          TOP_NEWS_LABEL,
          style: TextStyle(
            color: Colors.black,
            fontSize: HOME_HEADER_TEXT_SIZE,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
