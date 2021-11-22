import 'package:flutter/material.dart';

class BottomSendIconWidget extends StatelessWidget {
  final IconData icon;
  const BottomSendIconWidget({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).colorScheme.surface),
        padding: const EdgeInsets.all(10),
        child: Icon(icon));
  }
}
