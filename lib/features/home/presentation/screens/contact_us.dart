import 'package:aedc_clinic/core/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/constants/icon_assets.dart';
import '../../../../core/theme/colors.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      width: 310.w,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.myGreen, shape: const LinearBorder()),
        onPressed: () async {
          if (await canLaunchUrl(Uri.parse(AppStrings.customerService))) {
            await launchUrl(Uri.parse(AppStrings.customerService));
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('خدمة العملاء ليس متاحة الأن'),
                backgroundColor: Colors.redAccent,
              ),
            );
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              alignment: Alignment.centerLeft,
              fit: BoxFit.cover,
              IconAssets.whatsApp,
              height: 35.h,
              width: 35.w,
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  'تواصل معنا',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 20.sp,
                  ),
                ),
                Text(
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  'اذا كانت لديك أى شكوى',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
