import 'package:aedc_clinic/core/constants/image_assets.dart';
import 'package:flutter/material.dart';

import '../../data/models/clinic_destination.dart';

List<ClinicDestination> destinations(BuildContext context) {
  return [
    ClinicDestination(
        assetName: ImageAssets.salahEldinClinicImage,
        title: 'عيادة صلاح الدين',
        description: '',
        city: 'الأسكندرية',
        location:
            'ش سيدى المتولى أخر شارع فؤاد بديوان شركة الأسكندرية لتوزيع الكهرباء'),
  ];
}
