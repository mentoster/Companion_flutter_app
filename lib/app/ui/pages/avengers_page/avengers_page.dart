
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/avengers_controller.dart';


class AvengersPage extends GetView<AvengersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AvengersPage'),
      ),
      body: SafeArea(
        child: Text('AvengersController'),
      ),
    );
  }
}
  