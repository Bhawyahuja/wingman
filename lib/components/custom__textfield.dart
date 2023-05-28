import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.hint,
    this.keyboardType,
    this.label,
    this.controller,
    this.textCapitalization = TextCapitalization.none,
    this.maxLength,
  }) : super(key: key);

  final String? hint;
  final TextInputType? keyboardType;
  final String? label;
  final TextEditingController? controller;
  final TextCapitalization textCapitalization;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              label!,
              style: theme.textTheme.titleMedium,
            ),
          ),
        TextField(
          controller: controller,
          keyboardType: keyboardType,
          cursorColor: Theme.of(context).indicatorColor,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall,
          textCapitalization: textCapitalization,
          maxLength: maxLength,
          decoration: InputDecoration(
            hintText: hint,
            focusedBorder: buildOutlineInputBorder(theme),
            enabledBorder: buildOutlineInputBorder(theme),
            border: buildOutlineInputBorder(theme),
            hintStyle: Theme.of(context).textTheme.titleMedium,
            counter: const Offstage(),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder buildOutlineInputBorder(ThemeData theme) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: theme.indicatorColor),
    );
  }
}
