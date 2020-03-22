import 'package:flutter/material.dart';
import 'package:news_app_flutter/utils/constants.dart';
import 'package:news_app_flutter/utils/dimensions.dart';
import 'package:transparent_image/transparent_image.dart';

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(MARGIN_MEDIUM),
      ),
      child: FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        width: HOME_SCREEN_PROFILE_IMAGE_SIZE,
        height: HOME_SCREEN_PROFILE_IMAGE_SIZE,
        image: DUMMY_PROFILE_IMAGE,
      ),
    );
  }
}
