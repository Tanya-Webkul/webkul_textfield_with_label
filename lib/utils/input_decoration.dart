import 'package:flutter/material.dart';

class InputDecorationTextField extends InputDecoration {
  final InputBorder? inputBorder;
  final InputBorder? focusedInputBorder;
  final InputBorder? enabledInputBorder;
  final bool? isEnabled;
  final String? errorMsg;
  final InputBorder? errorInputBorder;
  final InputBorder? disabledInputBorder;
  final InputBorder? focusedErrorInputBorder;
  final String? hint;
  final bool? isFilled;
  final Color? filledColor;
  final TextStyle? prefixTextStyling;
  final TextStyle? suffixTextStyling;
  final String? prefixTxt;
  final Widget? prefixIconImage;
  final Color? prefixColor;
  final BoxConstraints? prefixConstraints;
  final String? suffixTxt;
  final Widget? suffixIconImage;
  final Color? suffixColor;
  final BoxConstraints? suffixConstraints;
  final String? helperTxt;
  final TextStyle? helperTxtStyle;
  final int? helperTxtMaxLines;
  final Color? onHoverColor;
  final Color? onFocusColor;
  final TextDirection? hintTxtDirection;
  final TextStyle? hintTxtStyle;
  final int? hintTxtMaxLines;
  final TextStyle? errorTxtStyle;
  final int? errorTxtMaxLines;
  final Widget? iconImage;
  final Color? iconImageColor;
  final bool? dense;
  final bool? collapsed;
  final String? counterTxt;
  final TextStyle? counterTxtStyle;
  final Widget? counterWidget;
  final String? semanticCounterTxt;
  final EdgeInsetsGeometry? contentEdgePadding;

  const InputDecorationTextField({
    this.counterTxt,
    this.counterTxtStyle,
    this.counterWidget,
    this.semanticCounterTxt,
    this.contentEdgePadding,
    this.helperTxt,
    this.helperTxtStyle,
    this.helperTxtMaxLines,
    this.onHoverColor,
    this.onFocusColor,
    this.hintTxtDirection,
    this.hintTxtStyle,
    this.hintTxtMaxLines,
    this.errorTxtStyle,
    this.errorTxtMaxLines,
    this.iconImage,
    this.iconImageColor,
    this.dense,
    this.collapsed,
    this.inputBorder,
    this.prefixTxt,
    this.suffixTxt,
    this.prefixIconImage,
    this.suffixIconImage,
    this.prefixConstraints,
    this.suffixConstraints,
    this.suffixColor,
    this.prefixColor,
    this.focusedErrorInputBorder,
    this.hint,
    this.errorMsg,
    this.isFilled,
    this.isEnabled,
    this.focusedInputBorder,
    this.errorInputBorder,
    this.enabledInputBorder,
    this.disabledInputBorder,
    this.filledColor,
    this.prefixTextStyling,
    this.suffixTextStyling,
  });

  @override
  Widget? get counter => counterWidget;

  @override
  TextStyle? get counterStyle => counterTxtStyle;

  @override
  String? get counterText => counterTxt;

  @override
  String? get semanticCounterText => semanticCounterTxt;

  @override
  EdgeInsetsGeometry? get contentPadding =>
      contentEdgePadding ?? const EdgeInsets.fromLTRB(12, 12, 12, 12);

  @override
  InputBorder? get focusedBorder => focusedInputBorder;

  @override
  bool get enabled => isEnabled ?? true;

  @override
  InputBorder? get enabledBorder => enabledInputBorder;

  @override
  InputBorder? get focusedErrorBorder => focusedErrorInputBorder;

  @override
  InputBorder? get disabledBorder => disabledInputBorder;

  @override
  bool? get filled => isFilled;

  @override
  Color? get fillColor => filledColor;

  @override
  InputBorder? get errorBorder => errorInputBorder;

  @override
  String? get hintText => hint;

  @override
  String? get errorText => errorMsg;

  @override
  Widget? get suffixIcon => suffixIconImage;

  @override
  Color? get suffixIconColor => suffixColor;

  @override
  TextStyle? get suffixStyle => suffixTextStyling;

  @override
  String? get suffixText => suffixTxt;

  @override
  BoxConstraints? get suffixIconConstraints => suffixConstraints;

  @override
  Widget? get prefixIcon => prefixIconImage;

  @override
  Color? get prefixIconColor => prefixColor;

  @override
  TextStyle? get prefixStyle => prefixTextStyling;

  @override
  String? get prefixText => prefixTxt;

  @override
  BoxConstraints? get prefixIconConstraints => prefixConstraints;

  @override
  int? get helperMaxLines => helperTxtMaxLines;

  @override
  TextStyle? get helperStyle => helperTxtStyle;

  @override
  String? get helperText => helperTxt;

  @override
  int? get hintMaxLines => hintTxtMaxLines;

  @override
  TextStyle? get hintStyle => hintTxtStyle;

  @override
  TextDirection? get hintTextDirection => hintTxtDirection;

  @override
  Color? get hoverColor => onHoverColor;

  @override
  Color? get focusColor => onFocusColor;

  @override
  int? get errorMaxLines => errorTxtMaxLines;

  @override
  TextStyle? get errorStyle => errorTxtStyle;

  @override
  Widget? get icon => iconImage;

  @override
  Color? get iconColor => iconImageColor;

  @override
  bool get isCollapsed => collapsed ?? true;

  @override
  bool? get isDense => dense;

  @override
  InputBorder? get border => inputBorder;
}
