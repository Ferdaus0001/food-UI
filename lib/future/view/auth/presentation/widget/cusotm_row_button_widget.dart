import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
class CustomRowButton extends StatelessWidget {
  final Widget? title;
  final double? redus;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  const CustomRowButton({
    super.key, this.title, this.redus, this.color, this.onTap, this.padding,
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap ,
      child: Container(
        padding: padding ?? const EdgeInsets.symmetric(vertical: 11,horizontal: 11),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(redus?? 11),
          color: color ?? Colors.black,
        ),
        child: Center(
          child: title,
        ),

      ),
    );
  }
}
