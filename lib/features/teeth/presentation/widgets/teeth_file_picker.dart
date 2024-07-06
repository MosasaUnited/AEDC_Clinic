import 'package:aedc_clinic/features/teeth/presentation/widgets/teeth_important_notice.dart';
import 'package:flutter/material.dart';

class TeethFilePicker extends StatelessWidget {
  const TeethFilePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TeethImportantNotice(text: 'من فضلك ارفع صورة القومسيون من هنا : ')
        // TODO: Add File Picker To Upload Teeth Commission Image
      ],
    );
  }
}
