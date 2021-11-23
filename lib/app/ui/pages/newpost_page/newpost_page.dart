import 'package:companion/app/ui/global_widgets.dart/back_button_widget.dart';
import 'package:companion/app/ui/global_widgets.dart/primary_button.dart';
import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:companion/app/ui/theme/app_text_theme.dart';
import 'package:companion/app/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';
import '../../../controllers/newpost_controller.dart';

class NewpostPage extends StatefulWidget {
  NewpostPage({Key? key}) : super(key: key);
  final _titleController = TextEditingController(text: 'Мой первый пост');
  final _bodyTextController = TextEditingController();
  @override
  State<NewpostPage> createState() => _NewpostPageState();
}

class _NewpostPageState extends State<NewpostPage> {
  var inputDecoration = InputDecoration(
    filled: true,
    isDense: true,
    fillColor: Themes.dark.colorScheme.background,
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.0),
        borderSide: const BorderSide(color: borderColor, width: 1.0)),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.0),
      borderSide: const BorderSide(color: borderColor, width: 1),
    ),
    labelStyle: const TextStyle(color: borderColor),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonWidget(),
        title: const Text('Новый пост'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          padding: const EdgeInsets.symmetric(
              vertical: defaultPadding, horizontal: screenPadding),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Заголовок',
                style: textRegular18,
              ),
              SizedBox(
                height: defaultPadding,
              ),
              TextFormField(
                decoration: inputDecoration,
                controller: widget._titleController,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Заголовок пустой';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: defaultPadding,
              ),
              Text('Содержимое', style: textRegular18),
              SizedBox(
                height: defaultPadding,
              ),
              TextFormField(
                minLines: 6,
                decoration: inputDecoration,
                controller: widget._bodyTextController,
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
              SizedBox(
                height: defaultPadding,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: const BorderRadius.all(Radius.circular(8))),
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                    alignment: WrapAlignment.center,
                    spacing: defaultPadding,
                    children: const [
                      Icon(Icons.format_bold),
                      Icon(Icons.link),
                      Icon(Icons.format_italic),
                      Icon(Icons.format_quote),
                      Icon(Icons.format_clear),
                    ]),
              ),
              SizedBox(
                height: defaultPadding,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: const BorderRadius.all(Radius.circular(8))),
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.image_outlined),
              ),
              SizedBox(
                height: defaultPadding,
              ),
              PrimaryButton("Опубликовать", onPressed: () => {}),
            ],
          ),
        )),
      ),
    );
  }
}
