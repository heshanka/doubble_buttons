import 'constants.dart';
import 'package:flutter/material.dart';

import 'base_button.dart';

class Button extends BaseButton{

  final Text text;

  final Icon? icon;

  Button({required this.text,
    this.icon,
    double? width = 300,
    double? height = 50,
    void Function()? onTap,
    bool isDisabled = false,
    double borderRadius = 4.0,
    Color? bgColor,
    Border? border}):
        super(width, height, onTap, isDisabled, borderRadius, bgColor, border){
    assert(text.data!.isNotEmpty);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(color: isDisabled ? Color.alphaBlend(Constants.disabledBtnColor, bgColor!) :bgColor, borderRadius: BorderRadius.all(Radius.circular(borderRadius)), border: border),
          child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: icon,
                  ),
                  text,
                ],
              )),
        ),
        onTap: onTap,
    );
  }
}