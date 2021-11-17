
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/favorite_controller.dart';


class FavoritePage extends GetView<FavoriteController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FavoritePage'),
      ),
      body: SafeArea(
        child: Text('FavoriteController'),
      ),
    );
  }
}
  