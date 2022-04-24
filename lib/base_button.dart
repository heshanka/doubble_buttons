import 'package:flutter/widgets.dart';

///
/// This class contains common properties shared by Button and IconButton
///
abstract class BaseButton extends StatelessWidget{

  final double? width;

  final double? height;

  final void Function()? onTap;

  final bool isDisabled;

  final double borderRadius;

  final Color? bgColor;

  final Border? border;


  BaseButton(this.width, this.height, this.onTap, this.isDisabled,
      this.borderRadius, this.bgColor, this.border);
}