import 'package:app/utilities/colors.dart';
import 'package:flutter/material.dart';

class OrangeBtn extends StatelessWidget {
  final String btnText;
  final VoidCallback onTap;
  final double? height;
  final double? width;
  final Color? color;
  final TextStyle? textStyle;

  const OrangeBtn(
      {super.key,
      required this.btnText,
      this.height,
      this.width,
      required this.onTap,
      this.color,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    bool heightCheck = false;
    bool widthCheck = false;
    bool colorCheck = false;
    bool textStyleCheck = false;

    if (height != null) {
      heightCheck = true;
    }
    if (width != null) {
      widthCheck = true;
    }
    if (color != null) {
      colorCheck = true;
    }
    if (textStyle != null) {
      textStyleCheck = true;
    }
    return Material(
      color: colorCheck ? color : AppColor.brand500,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: onTap,
        child: Container(
            width: widthCheck ? width : 150,
            height: heightCheck ? height : 50,
            alignment: Alignment.center,
            child: Text(
              btnText,
              style: textStyleCheck
                  ? textStyle
                  : Theme.of(context).textTheme.labelLarge,
            )),
      ),
    );
  }
}
