import 'package:flutter/material.dart';

class GradientWidget extends StatelessWidget {
  const GradientWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.transparent,
            Theme.of(context).colorScheme.surface.withOpacity(0.9)
          ],
          begin: const Alignment(-1, -1),
          end: const Alignment(-1, 0.9),
        ),
      ),
    );
  }
}
