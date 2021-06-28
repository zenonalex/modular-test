import 'package:commons/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';

class LoadButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const LoadButtonWidget({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(color: AppColors.text),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),
          backgroundColor: MaterialStateProperty.all<Color>(AppColors.primary),
        ),
      ),
    );
  }
}
