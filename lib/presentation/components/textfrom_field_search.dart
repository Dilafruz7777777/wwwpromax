import 'package:flutter/material.dart';
import 'package:wwwpromax/presentation/style/style.dart';

class SEarchTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final TextInputType keyboardType;
  const SEarchTextFormField(
      {Key? key,
        required this.controller,
        required this.label,
        this.keyboardType = TextInputType.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Padding(
        padding: EdgeInsets.only(top: 15, left: 16, right: 16),
        child: TextFormField(
          keyboardType: keyboardType,
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, color: Style.loadingGreyColor,),
            filled: true,
            fillColor: Style.textformBackgraundColor,
            hintText: label,
            hintStyle: Style.textformLabelStyle(),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Style.loadingGreyColor),
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Style.loadingGreyColor),
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
              borderSide: BorderSide(color:Style.loadingGreyColor),
            ),
            errorBorder: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}