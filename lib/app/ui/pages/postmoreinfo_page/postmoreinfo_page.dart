
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/postmoreinfo_controller.dart';


class PostmoreinfoPage extends GetView<PostmoreinfoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PostmoreinfoPage'),
      ),
      body: SafeArea(
        child: Text('PostmoreinfoController'),
      ),
    );
  }
}
  