import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/newsmoreinfopage_controller.dart';
import 'widgets/back_button_widget.dart';
import 'widgets/back_image_widget.dart';
import 'widgets/news_more_info_gradient_widget.dart';
import 'widgets/post_more_info_widget.dart';

class NewsmoreinfopagePage extends GetView<NewsmoreinfopageController> {
  const NewsmoreinfopagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(children: const [
            BackImageWidget(),
            NewsMoreInfoGradientWidget(),
            BackButtonWidget(),
            PostMoreInfoWidget()
          ]),
        ),
      ),
    );
  }
}
