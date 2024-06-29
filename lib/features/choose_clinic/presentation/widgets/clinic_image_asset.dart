import 'package:flutter/material.dart';

class ClinicImageAsset extends StatelessWidget {
  const ClinicImageAsset({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: .4,
      child: Image.asset(
        image,
        fit: BoxFit.fill,
      ),
    );
  }
}
