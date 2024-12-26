import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tes_larina_bakery/context_extention.dart';

import 'i_colors.dart';
import 'i_input_decoration.dart';

class ITextField extends StatelessWidget {
  final String label;
  final String note;
  final String? erorText;
  final TextStyle? labelStyle;
  final bool fieldRequired;
  final Widget Function(BuildContext context) textFieldBuilder;

  const ITextField({
    Key? key,
    required this.label,
    this.note = "",
    this.erorText,
    this.labelStyle,
    this.fieldRequired = false,
    required this.textFieldBuilder,
  }) : super(key: key);

  factory ITextField._template(
      {Key? key,
      required String label,
      String note = "",
      String? erorText,
      VoidCallback? onTap,
      TextInputType? keyboardType,
      bool autofocus = false,
      bool readOnly = false,
      String? Function(String?)? validator,
      TextInputAction? textInputAction,
      required TextEditingController? controller,
      int? maxLine = 1,
      int? maxLength,
      TextCapitalization textCapitalization = TextCapitalization.words,
      InputDecorationType inputDecorationType = InputDecorationType.outline,
      Function(String value)? onChanged,
      Function(String value)? onFieldSubmitted,
      TextStyle? labelStyle,
      List<TextInputFormatter>? inputFormatters,
      TextAlign textAlign = TextAlign.start,
      InputDecoration? decoration,
      TextStyle? style,
      bool fieldRequired = false,
      FocusNode? focusNode,
      bool obscureText = false}) {
    return ITextField(
      key: key,
      label: label,
      note: note,
      erorText: erorText,
      labelStyle: labelStyle,
      fieldRequired: fieldRequired,
      textFieldBuilder: (BuildContext context) {
        return TextFormField(
          textAlign: textAlign,
          // textAlignVertical: TextAlignVertical.center,
          focusNode: focusNode,
          readOnly: readOnly,
          cursorColor: IColors.black,
          cursorHeight: 23,
          autofocus: autofocus,
          decoration: decoration,
          inputFormatters: inputFormatters ??
              [
                FilteringTextInputFormatter.deny(
                  RegExp(
                    r'(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|'
                    r'\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])',
                  ),
                )
              ],
          style: style ?? context.bodyLarge?.copyWith(fontSize: 14),
          key: key,
          validator: validator,
          textInputAction: textInputAction,
          keyboardType: keyboardType,
          controller: controller,
          textCapitalization: textCapitalization,
          onTap: onTap,
          obscureText: obscureText,
          onChanged: (value) {
            if (value.endsWith("  ")) {
              var data = value.substring(0, value.length - 1);
              controller?.text = data;
              controller?.selection = TextSelection.collapsed(offset: data.length);
            }
            if (onChanged != null) {
              onChanged(value);
            }
          },
          maxLines: maxLine,
          maxLength: maxLength,
          autocorrect: true,
          onFieldSubmitted: onFieldSubmitted,
        );
      },
    );
  }

  factory ITextField.primary({
    Key? key,
    required String label,
    String note = "",
    String? erorText,
    VoidCallback? onTap,
    TextInputType? keyboardType,
    bool autofocus = false,
    bool readOnly = false,
    String? Function(String?)? validator,
    bool fieldRequired = false,
    TextInputAction? textInputAction,
    Widget? suffixIcon,
    Widget? prefixIcon,
    String? hintText,
    required TextEditingController? controller,
    int? maxLine = 1,
    int? maxLength,
    TextCapitalization textCapitalization = TextCapitalization.words,
    InputDecorationType inputDecorationType = InputDecorationType.outline,
    Function(String value)? onChanged,
    Function(String value)? onFieldSubmitted,
    TextStyle? labelStyle,
    List<TextInputFormatter>? inputFormatters,
    String? errorText,
    TextStyle? style,
    Color borderColor = IColors.neutral50,
    EdgeInsetsGeometry? contentPadding,
    FocusNode? focusNode,
  }) {
    return ITextField._template(
      inputFormatters: inputFormatters,
      key: key,
      label: label,
      focusNode: focusNode,
      note: note,
      erorText: erorText,
      onTap: onTap,
      obscureText: false,
      maxLine: maxLine,
      keyboardType: keyboardType,
      autofocus: autofocus,
      readOnly: readOnly,
      textCapitalization: textCapitalization,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      inputDecorationType: inputDecorationType,
      decoration: IInputDecoration.primary(
        hintText: hintText,
        suffixIcon: suffixIcon,
        inputDecorationType: inputDecorationType,
        borderColor: borderColor,
        fillColor: readOnly ? IColors.readonly : IColors.white,
        prefixIcon: prefixIcon,
        errorText: errorText,
        contentPadding: contentPadding,
      ),
      fieldRequired: fieldRequired,
      validator: validator,
      textInputAction: textInputAction,
      controller: controller,
      labelStyle: labelStyle,
      maxLength: maxLength,
      style: style,
    );
  }

  factory ITextField.email({
    Key? key,
    required String label,
    String note = "",
    String? erorText,
    VoidCallback? onTap,
    TextInputType? keyboardType,
    bool autofocus = false,
    bool readOnly = false,
    String? Function(String?)? validator,
    bool fieldRequired = false,
    TextInputAction? textInputAction,
    Widget? suffixIcon,
    Widget? prefixIcon,
    String? hintText,
    required TextEditingController? controller,
    int? maxLine = 1,
    int? maxLength,
    TextCapitalization textCapitalization = TextCapitalization.words,
    InputDecorationType inputDecorationType = InputDecorationType.outline,
    Function(String value)? onChanged,
    Function(String value)? onFieldSubmitted,
    TextStyle? labelStyle,
    List<TextInputFormatter>? inputFormatters,
    String? errorText,
    Color borderColor = IColors.neutral50,
  }) {
    return ITextField._template(
      inputFormatters: inputFormatters,
      key: key,
      label: label,
      note: note,
      erorText: erorText,
      onTap: onTap,
      obscureText: false,
      maxLine: maxLine,
      keyboardType: TextInputType.emailAddress,
      autofocus: autofocus,
      readOnly: readOnly,
      textCapitalization: textCapitalization,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      inputDecorationType: inputDecorationType,
      decoration: IInputDecoration.primary(
        hintText: hintText,
        suffixIcon: suffixIcon,
        inputDecorationType: inputDecorationType,
        borderColor: borderColor,
        fillColor: onTap != null
            ? IColors.white
            : readOnly
                ? IColors.readonly
                : IColors.white,
        prefixIcon: prefixIcon,
        errorText: errorText,
      ),
      fieldRequired: fieldRequired,
      validator: validator,
      textInputAction: textInputAction,
      controller: controller,
      labelStyle: labelStyle,
      maxLength: maxLength,
    );
  }

  factory ITextField.number({
    Key? key,
    required String label,
    String note = "",
    String? erorText,
    VoidCallback? onTap,
    bool autofocus = false,
    bool readOnly = false,
    String? Function(String?)? validator,
    bool fieldRequired = false,
    TextInputAction? textInputAction,
    Widget? suffixIcon,
    Widget? prefixIcon,
    String? hintText,
    required TextEditingController? controller,
    int? maxLine = 1,
    int? maxLength,
    TextCapitalization textCapitalization = TextCapitalization.words,
    InputDecorationType inputDecorationType = InputDecorationType.outline,
    Function(String value)? onChanged,
    Function(String value)? onFieldSubmitted,
    TextStyle? labelStyle,
    String? errorText,
    Color borderColor = IColors.neutral50,
  }) {
    return ITextField._template(
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      key: key,
      label: label,
      note: note,
      erorText: erorText,
      onTap: onTap,
      obscureText: false,
      maxLine: maxLine,
      keyboardType: TextInputType.number,
      autofocus: autofocus,
      readOnly: readOnly,
      textCapitalization: textCapitalization,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      inputDecorationType: inputDecorationType,
      decoration: IInputDecoration.primary(
        hintText: hintText,
        suffixIcon: suffixIcon,
        inputDecorationType: inputDecorationType,
        borderColor: borderColor,
        fillColor: onTap != null
            ? IColors.white
            : readOnly
                ? IColors.readonly
                : IColors.white,
        prefixIcon: prefixIcon,
        errorText: errorText,
      ),
      fieldRequired: fieldRequired,
      validator: validator,
      textInputAction: textInputAction,
      controller: controller,
      labelStyle: labelStyle,
      maxLength: maxLength,
    );
  }

  factory ITextField.password({
    Key? key,
    required String label,
    String note = "",
    String? erorText,
    VoidCallback? onTap,
    bool autofocus = false,
    bool readOnly = false,
    String? Function(String?)? validator,
    bool fieldRequired = false,
    TextInputAction? textInputAction,
    Widget? suffixIcon,
    Widget? prefixIcon,
    String? hintText,
    TextInputType? textInputType,
    required TextEditingController? controller,
    TextCapitalization textCapitalization = TextCapitalization.none,
    bool obscureText = true,
    Function(String value)? onChanged,
    int? maxLine = 1,
    int? maxLength,
    TextStyle? labelStyle,
    TextStyle? style,
    List<TextInputFormatter>? inputFormatters,
    InputDecorationType inputDecorationType = InputDecorationType.outline,
    String? errorText,
    Color borderColor = IColors.neutral50,
  }) {
    return ITextField._template(
      key: key,
      label: label,
      note: note,
      erorText: erorText,
      onTap: onTap,
      onChanged: onChanged,
      maxLine: maxLine,
      obscureText: obscureText,
      keyboardType: textInputType ?? TextInputType.visiblePassword,
      autofocus: autofocus,
      readOnly: readOnly,
      inputDecorationType: inputDecorationType,
      inputFormatters: inputFormatters,
      textCapitalization: textCapitalization,
      decoration: IInputDecoration.primary(
        hintText: hintText,
        suffixIcon: suffixIcon,
        borderColor: borderColor,
        fillColor: onTap != null
            ? IColors.white
            : readOnly
                ? IColors.readonly
                : IColors.white,
        prefixIcon: prefixIcon,
        errorText: errorText,
      ),
      fieldRequired: fieldRequired,
      validator: validator,
      textInputAction: textInputAction,
      controller: controller,
      labelStyle: labelStyle,
      maxLength: maxLength,
      style: style,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _label(context),
        context.sbHeight(8),
        textFieldBuilder(context),
        Align(alignment: Alignment.centerRight, child: _errorText(context)),
        Align(alignment: Alignment.centerRight, child: _note(context)),
      ],
    );
  }

  Widget _label(BuildContext context) {
    return label.isEmpty
        ? const SizedBox()
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                label,
                style: labelStyle ?? context.subtitle1,
              ),
              fieldRequired
                  ? Text(
                      "*",
                      style: context.subtitle1,
                    )
                  : const SizedBox()
            ],
          );
  }

  Widget _note(BuildContext context) {
    return note.isEmpty
        ? const SizedBox()
        : Column(
            children: [
              context.sbHeight(4),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Text("Note: ", style: context.bodySmall),
                  Expanded(
                    child: Text(
                      note,
                      style: context.button?.copyWith(fontSize: 10, color: IColors.disable),
                      textAlign: TextAlign.right,
                    ),
                  )
                ],
              ),
            ],
          );
  }

  Widget _errorText(BuildContext context) {
    return erorText == null
        ? const SizedBox()
        : Column(
            children: [
              context.sbHeight(4),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Text("Note: ", style: context.bodySmall),
                  Expanded(
                    child: Text(
                      erorText!,
                      style: context.button?.copyWith(fontSize: 10, color: IColors.red),
                      textAlign: TextAlign.right,
                    ),
                  )
                ],
              ),
            ],
          );
  }
}
