import 'package:app/utilities/colors.dart';
import 'package:flutter/material.dart';

class WhiteBtn extends StatelessWidget {
  final String btnText;
  final Function()? onTap;
  final double? height;
  final double? width;
  final Image? icon;

  const WhiteBtn(
      {super.key,
      required this.btnText,
      this.height,
      this.width,
      this.icon,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    bool heightCheck = false;
    bool widthCheck = false;

    if (height != null) {
      heightCheck = true;
    }
    if (width != null) {
      widthCheck = true;
    }
    return Material(
      color: AppColor.brand100,
      borderRadius: BorderRadius.circular(20),
      shadowColor: Colors.black,
      child: InkWell(
        onTap: onTap,
        child: Container(
            width: widthCheck ? width : 150,
            height: heightCheck ? height : 50,
            alignment: Alignment.center,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                  child: SizedBox(
                    height: 30,
                    child: icon,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    btnText,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
