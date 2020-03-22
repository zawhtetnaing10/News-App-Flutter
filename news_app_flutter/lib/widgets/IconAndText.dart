import 'package:flutter/material.dart';
import 'package:news_app_flutter/utils/dimensions.dart';

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
