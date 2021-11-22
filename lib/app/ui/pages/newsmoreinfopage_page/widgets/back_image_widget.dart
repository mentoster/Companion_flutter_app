import 'package:flutter/material.dart';

class BackImageWidget extends StatelessWidget {
  const BackImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/dummy_images/news/spirit_new.png",
      width: double.infinity,
      height: 250,
      fit: BoxFit.cover,
    );
  }
}
