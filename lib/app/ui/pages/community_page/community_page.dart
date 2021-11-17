
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/community_controller.dart';


class CommunityPage extends GetView<CommunityController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CommunityPage'),
      ),
      body: SafeArea(
        child: Text('CommunityController'),
      ),
    );
  }
}
  