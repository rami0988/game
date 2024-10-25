import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

Widget defaultFormField({
  TextEditingController? controller,
  required TextInputType type,
  ValueChanged<String>? onSubmit,
  ValueChanged<String>? onChange,
  VoidCallback? suffixPressed,
  FormFieldValidator<String>? validate,
  required String label,
  IconData? prefix,
  IconData? suffix,
  bool isPassword = false,
}) =>
    Padding(
      padding: const EdgeInsets.all(5),
      child: TextFormField(
          controller: controller,
          keyboardType: type,
          onFieldSubmitted: onSubmit,
          onChanged: onChange,
          validator: validate,
          obscureText: isPassword,
          decoration: InputDecoration(
            labelText: label,
            prefixIcon: Icon(
              prefix,
              color: ColorManager.blue3,
            ),
            suffixIcon: suffix != null
                ? IconButton(
                    onPressed: suffixPressed,
                    icon: Icon(suffix),
                    color: ColorManager.blue6,
                  )
                : null,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: ColorManager.lightGrey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: ColorManager.blue5),
            ),
          )),
    );




Widget customCard({
  required String time,
  Color? color,
  double elevation = 4.0,
  double borderRadius = 8.0,
}) =>
    Card(
      color: color ?? ColorManager.pending,
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Center(child: Text(time)),
      ),
    );
