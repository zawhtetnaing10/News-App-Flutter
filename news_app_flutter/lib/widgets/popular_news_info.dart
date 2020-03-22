import 'package:flutter/material.dart';
import 'package:news_app_flutter/utils/dimensions.dart';
import 'package:news_app_flutter/widgets/IconAndText.dart';

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
