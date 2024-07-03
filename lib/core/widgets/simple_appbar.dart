import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SimpleAppbar extends StatelessWidget {
  const SimpleAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        GoRouter.of(context).pop();
      },
      icon: const Icon(Icons.arrow_back_ios_new),
    );
  }
}