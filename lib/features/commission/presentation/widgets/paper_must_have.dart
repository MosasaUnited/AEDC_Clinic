import 'package:aedc_clinic/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/custom_text_widget.dart';

class PaperMustHave extends StatelessWidget {
  const PaperMustHave({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        Text(
          textDirection: TextDirection.rtl,
          'تأكد من وجود الأوراق التالية معك لتقديم القومسيون الطبى :',
          style: Styles.textStyle20,
        ),
        SizedBox(
          height: 10.h,
        ),
        const CustomTextWidget(
          text:
              '1 - الموافقة الكتابية من شركة الخدمات الطبية لعمل العملية الجراحية أو الخدمة المطلوب استردادها',
        ),
        SizedBox(
          height: 8.h,
        ),
        const CustomTextWidget(
          text:
              '2 - جواب من الجهة التى تم فيها العملية الجراحية أو الخدمة المطلوب استردادها يثبت عملها فى تاريخه',
        ),
        SizedBox(
          height: 8.h,
        ),
        const CustomTextWidget(
            text:
                '3 - أوراق الأدوية و المستلزمات المستخدمة فى العملية الجراحية'),
        SizedBox(
          height: 8.h,
        ),
        const CustomTextWidget(
            text:
                '4 - التأكد من وجود ختم الدكتور أو ختم الجهة التى تم فيها العملية الجراحية على الأوراق المقدمة'),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
