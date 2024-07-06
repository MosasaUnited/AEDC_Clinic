import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class XrayPaperNotice extends StatelessWidget {
  const XrayPaperNotice({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textDirection: TextDirection.rtl,
          text,
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}