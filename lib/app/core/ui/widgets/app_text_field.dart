import 'package:flutter/material.dart';
import 'package:gradient_text/app/core/ui/extensions/size_screen_extension.dart';
import 'package:gradient_text/app/core/ui/extensions/theme_extension.dart';

class AppTextField extends StatefulWidget {
  final String? label;
  final bool password;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  const AppTextField({
    super.key,
    this.label,
    this.controller,
    this.validator,
  }) : password = false;

  const AppTextField.password({
    super.key,
    this.label,
    this.controller,
    this.validator,
  }) : password = true;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(
      color: Colors.grey,
    ),
  );
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.8.sw,
      height: 48,
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        obscureText: widget.password ? isObscure : false,
        decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: const TextStyle(
            fontSize: 15,
            color: Colors.black54,
          ),
          suffixIcon: widget.password
              ? IconButton(
                  icon: isObscure
                      ? const Icon(Icons.lock)
                      : const Icon(Icons.lock_open_outlined),
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                )
              : null,
          suffixIconColor: context.primaryColor,
          border: border,
          errorBorder: border,
          enabledBorder: border,
          focusedBorder: border.copyWith(
              borderSide: const BorderSide(
            color: Colors.black,
          )),
          disabledBorder: border,
        ),
      ),
    );
  }
}
