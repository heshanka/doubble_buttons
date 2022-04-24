import 'base_button.dart';
import 'package:flutter/material.dart';

class IconButton extends BaseButton{

  final Icon? icon;

  IconButton(this.icon, {double? width = 300, double? height = 50, void Function()? onTap, bool isDisabled = false, double borderRadius = 4.0, Color? bgColor, Border? border}):
        super(width, height, onTap, isDisabled, borderRadius, bgColor, border);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.all(Radius.circular(borderRadius)), border: border),
        child: Center(
            child: icon
        ),
      ),
      onTap: onTap,
    );
  }
}