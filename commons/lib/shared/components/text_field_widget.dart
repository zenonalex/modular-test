import 'package:commons/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  
  const TextFieldWidget({
    Key? key,
    required this.label,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(left: 40, right: 40, top: 8, bottom: 8),
        child: TextField(
          key: key,
          controller: controller,
          autofocus: false,
          style: TextStyle(fontSize: 15.0, color: AppColors.text),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: label,
            filled: true,
            fillColor: AppColors.background,
            contentPadding:
                const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(10.0),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
