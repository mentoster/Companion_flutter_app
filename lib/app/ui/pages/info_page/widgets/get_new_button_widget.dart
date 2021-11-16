import 'package:flutter/material.dart';
import 'package:companion/app/controllers/info_controller.dart';
import 'package:get/get.dart';

class GetNewButtonWidget extends StatelessWidget {
  const GetNewButtonWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final InfoController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () {
              controller.fetchApi();
            },
            child: Text('Get new profile')),
      ],
    );
  }
}
