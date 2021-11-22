import 'package:flutter/material.dart';

import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:companion/app/ui/theme/app_text_theme.dart';

class CommentWidget extends StatelessWidget {
  final String avatarPath;
  final String nickname;
  final String comment;
  final String date;
  const CommentWidget({
    Key? key,
    required this.avatarPath,
    required this.nickname,
    required this.comment,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: CircleAvatar(
              backgroundImage: AssetImage(
                avatarPath,
              ),
            ),
          ),
          const SizedBox(width: defaultPadding),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: const BorderRadius.all(Radius.circular(8))),
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nickname,
                      style: textMedium14,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Container(
                      constraints: BoxConstraints(
                        minWidth: 0,
                        maxWidth:
                            size.width - screenPadding * 4 - defaultPadding - 8,
                      ),
                      child: Text(
                        comment,
                        softWrap: true,
                        style: textRegular14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                date,
                style: TextStyle(
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .color!
                      .withOpacity(0.6),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
