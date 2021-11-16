import 'package:flutter/material.dart';

class GenreBox extends StatefulWidget {
  final Color boxColor;
  final String name;
  final String path;
  const GenreBox(
    this.name, {
    Key? key,
    required this.boxColor,
    required this.path,
  }) : super(key: key);

  @override
  State<GenreBox> createState() => _GenreBoxState();
}

class _GenreBoxState extends State<GenreBox> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: widget.boxColor,
          border: Border.all(
            color: selected ? const Color(0xff0d7fe9) : const Color(0x000d7fe9),
            width: 4,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 80,
                  child: Image.asset(widget.path),
                ),
                const SizedBox(height: 4),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      fit: BoxFit.fill,
                      child: Text(
                        widget.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xaa000000),
                          // fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
