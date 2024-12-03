import 'package:flutter/material.dart';
import 'package:ui_design/utils/constants.dart';
import 'package:ui_design/utils/widget_functions.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double width;

  const OptionButton(
      {Key? key, required this.text, required this.icon, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: COLOR_DARK_BLUE,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          splashFactory: InkRipple.splashFactory,
        ).copyWith(
          overlayColor:
              WidgetStateProperty.all<Color>(Colors.white.withAlpha(55)),
        ),
        onPressed: () {},
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: COLOR_WHITE,
              ),
              addHorizontalSpace(10),
              Text(
                text,
                style: TextStyle(color: COLOR_WHITE),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
