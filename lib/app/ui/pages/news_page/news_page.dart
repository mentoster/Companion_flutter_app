
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/news_controller.dart';


class NewsPage extends GetView<NewsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NewsPage'),
      ),
      body: SafeArea(
        child: Text('NewsController'),
      ),
    );
  }
}
  