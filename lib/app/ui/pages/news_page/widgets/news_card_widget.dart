import 'package:companion/app/ui/pages/newsmoreinfopage_page/newsmoreinfopage_page.dart';
import 'package:flutter/material.dart';

import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:get/get.dart';

import 'news_gradient_widget.dart';

class NewsCard extends StatelessWidget {
  final double _cardRadius = 16.0;
  final String imagePath;
  final String title;
  final String date;
  final String prewiewText;
  const NewsCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.date,
    required this.prewiewText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(const NewsmoreinfopagePage()),
      child: Container(
          padding: const EdgeInsets.symmetric(
              horizontal: screenPadding, vertical: defaultPadding / 2),
          height: 476,
          child: Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(_cardRadius)),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                height: 476,
              ),
            ),
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(_cardRadius)),
                child: const NewsGradientWidget()),
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      date,
                      style: TextStyle(
                        color: Color(0x99ffffff),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: "Oxanium",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      prewiewText,
                      style: TextStyle(
                        color: Color(0x99ffffff),
                        fontSize: 14,
                      ),
                    ),
                  ]),
            ),
          ])),
    );
  }
}
