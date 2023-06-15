import 'package:flutter/material.dart';
import 'package:gradient_text/app/core/ui/extensions/size_screen_extension.dart';
import 'package:gradient_text/app/core/ui/extensions/theme_extension.dart';

class AppButton extends StatefulWidget {
  final String label;
  const AppButton({
    super.key,
    required this.label,
  });

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.8.sw,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: context.primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: () {},
        child: Text(
          widget.label.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
