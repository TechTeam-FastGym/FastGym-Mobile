import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final IconData icon;
  final bool obscureText;
  final Widget? suffixIcon;
  // se define el tipo de dato de las funciones validator y onSaved
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;

  // aqui se define el constructor  CustomTextFormField
  const CustomTextFormField({
    super.key,
    required this.labelText,
    required this.icon,
    this.obscureText = false,
    this.onSaved,
    this.validator,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(icon),
        border: const OutlineInputBorder(),
        suffixIcon: suffixIcon,),
      obscureText: obscureText,
      validator: validator,
      onSaved: onSaved,
    );
  }
}
