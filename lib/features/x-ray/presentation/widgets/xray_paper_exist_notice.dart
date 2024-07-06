import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class XrayPaperExistNotice extends StatelessWidget {
  const XrayPaperExistNotice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textDirection: TextDirection.rtl,
          'إذا كان لديك تحويل من مستشفى لعمل آشعة ارفع صورة التحويل من هنا ',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
