import 'package:flutter/material.dart';
import 'package:wwwpromax/presentation/style/style.dart';

class CustomTextForm_Field extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final TextInputType keyboardType;
  const CustomTextForm_Field(
      {Key? key,
        required this.controller,
        required this.label,
        this.keyboardType = TextInputType.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Padding(
        padding: EdgeInsets.only(top: 15, left: 28, right: 28),
        child: TextFormField(
          keyboardType: keyboardType,
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: Style.textformBackgraundColor,
            hintText: label,
            hintStyle: Style.textformLabelStyle(),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Style.textformBorderColor),
              borderRadius: BorderRadius.all(
                Radius.circular(24),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Style.textformBorderColor),
              borderRadius: BorderRadius.all(
                Radius.circular(24),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(24),
              ),
              borderSide: BorderSide(color:Style.textformBorderColor),
            ),
            errorBorder: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}