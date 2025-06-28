import 'package:flutter/cupertino.dart';

class CustomConatainer extends StatelessWidget {
  final Widget? widget;
  Color? cc;
  final String imgPath;
  final double w;
  final double h;
  CustomConatainer(
      {super.key,
      this.widget,
      this.cc,
      required this.imgPath,
      required this.w,
      required this.h});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h,
      child: widget,
      decoration: BoxDecoration(
          color: cc,
          image: DecorationImage(
              image: AssetImage(
                imgPath,
              ),
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high)),
    );
  }
}
