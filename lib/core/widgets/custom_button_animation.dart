import 'dart:math' as math;

import 'package:flutter/material.dart';

class CustomButtonAnimation extends StatefulWidget {
  const CustomButtonAnimation(
      {super.key,
      required this.child,
      this.color = Colors.blue,
      required this.onPressed});

  final Duration _duration = const Duration(milliseconds: 70);
  final Widget child;
  final MaterialColor color;
  final GestureTapCallback onPressed;

  @override
  State<CustomButtonAnimation> createState() => _CustomButtonAnimationState();
}

class _CustomButtonAnimationState extends State<CustomButtonAnimation> {
  double _faceLeft = 20.0;
  double _faceTop = 0.0;
  double _slideWidth = 20.0;
  double _bottomHeight = 20.0;
  final Curve _curve = Curves.ease;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220.0,
      height: 80.0,
      child: GestureDetector(
        onTapDown: _pressed,
        onTapUp: _unPressedOnTapUp,
        onTapCancel: _unPressed,
        child: Stack(
          children: [
            Positioned(
              top: 0.2,
              child: Transform(
                origin: const Offset(20, 0),
                transform: Matrix4.skewY(-0.79),
                child: AnimatedContainer(
                  duration: widget._duration,
                  curve: _curve,
                  width: _slideWidth,
                  height: 60,
                  color: widget.color[800],
                ),
              ),
            ),
            Positioned(
              top: 60.0,
              left: 20.1,
              child: Transform(
                transform: Matrix4.rotationZ(math.pi),
                child: AnimatedContainer(
                  duration: widget._duration,
                  curve: _curve,
                  width: 200.0,
                  height: _bottomHeight,
                  color: widget.color[800],
                ),
              ),
            ),
            AnimatedPositioned(
              duration: widget._duration,
              curve: _curve,
              left: _faceLeft,
              top: _faceTop,
              child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 60,
                decoration: BoxDecoration(
                  color: widget.color,
                  border: Border.all(color: widget.color[800]!, width: 1),
                ),
                child: widget.child,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _pressed(_) {
    setState(() {
      _faceLeft = 0.0;
      _faceTop = 20.0;
      _slideWidth = 0.0;
      _bottomHeight = 0.0;
    });
    widget.onPressed();
  }

  void _unPressedOnTapUp(_) => _unPressed();

  void _unPressed() {
    setState(() {
      _faceLeft = 20.0;
      _faceTop = 0.0;
      _slideWidth = 20.0;
      _bottomHeight = 20.0;
    });
  }
}
