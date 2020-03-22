import 'package:flutter/material.dart';
import 'package:news_app_flutter/utils/constants.dart';
import 'package:news_app_flutter/utils/dimensions.dart';

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(MARGIN_MEDIUM),
      ),
      child: Image(
        width: HOME_SCREEN_PROFILE_IMAGE_SIZE,
        height: HOME_SCREEN_PROFILE_IMAGE_SIZE,
        image: NetworkImage(DUMMY_PROFILE_IMAGE),
      ),
    );
  }
}
