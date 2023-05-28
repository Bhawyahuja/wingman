import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.onTap,
    required this.text,
    this.showLoader,
  }) : super(key: key);

  final VoidCallback? onTap;
  final String text;
  final bool? showLoader;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => onTap?.call(),
      color: Theme.of(context).indicatorColor,
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      height: 52,
      minWidth: double.infinity,
      child: showLoader == true
          ? const CircularProgressIndicator()
          : Text(
              text,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
            ),
    );
  }
}
