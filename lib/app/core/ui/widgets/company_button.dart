import 'package:flutter/material.dart';
import 'package:gradient_text/app/core/ui/extensions/size_screen_extension.dart';
import 'package:gradient_text/app/core/ui/extensions/theme_extension.dart';

class CompanyButton extends StatefulWidget {
  final Icon companyIcon;
  final String company;
  final Color? buttonColor;
  final VoidCallback? onPressed;
  const CompanyButton({
    super.key,
    required this.companyIcon,
    required this.company,
    this.buttonColor,
    this.onPressed,
  });

  @override
  State<CompanyButton> createState() => _CompanyButtonState();
}

class _CompanyButtonState extends State<CompanyButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: .4.sw,
      height: 35,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.buttonColor ?? context.primaryColorDark,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: widget.onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            widget.companyIcon,
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 6.0),
              child: VerticalDivider(
                thickness: 2,
                color: Colors.white,
              ),
            ),
            Text(widget.company),
          ],
        ),
      ),
    );
  }
}
