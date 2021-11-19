import 'package:flutter/material.dart';

class NewsGradientWidget extends StatelessWidget {
  const NewsGradientWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Theme.of(context).colorScheme.surface, Colors.transparent],
          stops: const [
            0.65,
            1,
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.center,
        ),
      ),
    );
  }
}
