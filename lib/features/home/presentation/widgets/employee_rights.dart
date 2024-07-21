import 'package:aedc_clinic/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/app_router.dart';
import '../../../../core/theme/styles.dart';

class EmployeeRights extends StatelessWidget {
  const EmployeeRights({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      textDirection: TextDirection.rtl,
      children: [
        Center(
          child: Text(
            'حقوق المريض',
            style: Styles.textStyle20.copyWith(
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          'اطلاعه على حقوقه و المعلومات الخاصة بحالته، والرد على استفساراته بلغة مبسطة. \n'
          'معرفة الطبيب المعالج و فريق تقديم الرعاية.\n'
          'تلقي الرعاية الملائمة حال الالم او الاعاقة.\n'
          'الحصول على الرعاية الملائمة ) حال توافرها بالمستشفى( التى تحترم قيم و معتقدات المريض و كرامته، و مراعاة المساواة في تقديمها.\n'
          'معرفة المعلومات الخاصة برعايته، و المشاركة في اتخاذ القرارات المتعلقة بها، بعد اطلاعه على نتائجها، بدائلها و عواقب عدم الالتزام بها.\n'
          'اطلاعه على فوائد، مضاعفات، بدائل، و نسب نجاح الاجراءات التداخلية، العمليات الجراحية، نقل الدم مشتقاته، التخدير،و التنويم، نقل الاعضاء، العلاج الكيميائي، الغسيل الكلوي و الكبدي، و الحقن بالصبغة، و توقيعه على اقرار بالموافقة قبل اجرائها او اعطائها.\n'
          'رفض الرعاية و عدم الإستمرار فى العلاج بعد توضيح العواقب المترتبة على ذلك.\n'
          'الحفاظ على أمنه، ممتلكاته، خصوصيته، سرية المعلومات الخاصة به.\n'
          'تلبية احتياجاته و تقديم شكاوى او إقتراحات و سعي المستشفى لتبنيها.\n'
          'معرفة أسعار الخدمات المقدمة بالمستشفى.\n'
          'الحقوق التى تحددها لوائح و قوانين وزارة الصحة.\n',
          style: Styles.textStyle16,
          textDirection: TextDirection.rtl,
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          'إذا كنت تريد الإطلاع على لائحة علاج العاملين بشركات الكهرباء',
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w700,
          ),
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          width: 10.w,
        ),
        TextButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kKnowRightsReader);
          },
          child: Text(
            'إضغط هنا',
            style: Styles.textStyle16.copyWith(
              color: MyColors.appColor,
              fontWeight: FontWeight.w900,
            ),
          ),
        )
      ],
    );
  }
}
