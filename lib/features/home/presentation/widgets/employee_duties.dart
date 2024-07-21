import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/styles.dart';

class EmployeeDuties extends StatelessWidget {
  const EmployeeDuties({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      textDirection: TextDirection.rtl,
      children: [
        Center(
          child: Text(
            'واجبات المريض',
            style: Styles.textStyle20.copyWith(
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          'إحترام و إتباع النظام و القواعد المطبقة، كذلك المرضى الآخرين و العاملين بالمستشفى. \n'
          'تزويد الفريق المعالج بكافة المعلومات الخاصة بالتاريخ المرضي.\n'
          'إتباع الخطة العلاجية المتفق عليها مع الطبيب المعالج.\n'
          'ابلاغ الفريق المعالج عن اي اعراض او تغيرات في حالته الصحية بما في ذلك الالم.\n'
          'عدم مغادرة المستشفى أثناء الخضوع للعلاج إلا بإذن من الطبيب المعالج و إدارة المستشفى.\n'
          'تحمل مسئولية العواقب الناتجة عن رفض العلاج او مغادرة المستشفى بالمخالفة لنصيحة الطبيب المعالج، و توقيع الاقرارات اللازمة لذلك.\n'
          'عدم الإحتفاظ بمبالغ كبيرة أو أشياء ذات قيمة و تسليمها لإدارة الامن بالمستشفى كأمانات.\n'
          'إحترام مواعيد الزيارة الرسمية و عدم قيام الأطفال أقل من 10 سنوات بزيارات عدا أيام الجمع و العطلات الرسمية.\n'
          'الإلتزام بالحفاظ على مرافق المستشفى.\n'
          'عدم دخول المأكولات من خارج المستشفى حفاظاً على صحة المرضى، فضلا عن المواقد و السخانات و خلافه.\n'
          'الوفاء بالاتزامات المالية تجاه المستشفى في المواعيد المقررة.\n'
          'عدم الخروج من المستشفى أثناء الاقامة للعلاج .\n',
          style: Styles.textStyle16,
          textDirection: TextDirection.rtl,
        ),
      ],
    );
  }
}
