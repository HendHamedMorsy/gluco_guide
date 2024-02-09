import 'package:flutter/material.dart';

import '../../core/services/extensions.dart';

class TitleWithSubTitle extends StatelessWidget {
  const TitleWithSubTitle({
    required this.title,
    required this.subtitle,
    super.key,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          style: context.textTheme.headlineMedium,
        ),
        context.vSpaceBox8,
        Text(
          subtitle,
          style: context.textTheme.bodyMedium
              ?.copyWith(fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
