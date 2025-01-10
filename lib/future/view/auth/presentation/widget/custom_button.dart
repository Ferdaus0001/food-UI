import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final String? title;
  final double? redus;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  const CustomButton({
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
          child: Text(title!,style: const TextStyle(fontWeight: FontWeight.bold,
              fontSize: 20,color: Colors.white),),
        ),
      ),
    );
  }
}
