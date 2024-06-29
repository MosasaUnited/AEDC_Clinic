import 'package:aedc_clinic/core/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBarDot extends StatefulWidget {
  const CustomBottomNavBarDot({
    super.key,
    this.defaultSelectedIndex = 0,
    required this.onChange,
    required this.textList,
    required this.iconList,
    this.backgroundColor = MyColors.myOffWhite,
    this.selectedColor = MyColors.appColor,
    this.unSelectedColor = MyColors.myGrey,
    this.radius = 0.0,
    this.sizeIcon = 24,
    this.showLabel = true,
  });

  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<String> textList;
  final List<IconData> iconList;
  final Color backgroundColor;
  final Color selectedColor;
  final Color unSelectedColor;
  final double radius;
  final double sizeIcon;
  final bool showLabel;

  @override
  State<CustomBottomNavBarDot> createState() => _CustomBottomNavBarDotState();
}

class _CustomBottomNavBarDotState extends State<CustomBottomNavBarDot> {
  int selectedIndex = 0;
  List<IconData> iconList = [];
  List<String> textList = [];

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.defaultSelectedIndex;
    iconList = widget.iconList;
    textList = widget.textList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> navBarItemList = [];

    for (var i = 0; i < iconList.length; i++) {
      navBarItemList.add(
        buildNavBarItem(
          iconList[i],
          i,
          textList[i],
        ),
      );
    }
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(widget.radius),
          topRight: Radius.circular(widget.radius),
        ),
      ),
      child: Row(
        children: navBarItemList,
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index, String text) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        selectedIndex = index;
      },
      child: Container(
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / iconList.length,
              padding: const EdgeInsets.only(bottom: 8, top: 16),
              child: Icon(
                icon,
                size: widget.sizeIcon,
                color: selectedIndex == index
                    ? widget.selectedColor
                    : widget.unSelectedColor,
              ),
            ),
            Visibility(
              visible: widget.showLabel,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  text,
                  style: TextStyle(
                    height: 0,
                    fontSize: 10,
                    color: selectedIndex == index
                        ? widget.selectedColor
                        : widget.unSelectedColor,
                  ),
                ),
              ),
            ),
            selectedIndex == index ? selectedDot() : unSelectedDot(),
          ],
        ),
      ),
    );
  }

  Widget selectedDot() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      width: 4,
      height: 4,
      margin: const EdgeInsets.only(bottom: 4),
      decoration: BoxDecoration(
        color: MyColors.myTeal,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }

  Widget unSelectedDot() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      width: 4,
      height: 4,
      margin: const EdgeInsets.only(bottom: 4),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
