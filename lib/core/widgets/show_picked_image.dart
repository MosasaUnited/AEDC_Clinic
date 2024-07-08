import 'package:flutter/material.dart';

class ShowPickedImage extends StatelessWidget {
  const ShowPickedImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Stack(
                children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    // child: ,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
