import 'package:commons/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CardListWidget extends StatelessWidget {
  final String title;
  final onTap;
  const CardListWidget({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: InkWell(
        onTap: onTap,
        child: Card(
          margin: EdgeInsets.only(bottom:5,left:25, right: 25),
          color: AppColors.background,
          elevation: 4,
          child: Center(child: Text(title)),
        ),
      ),
    );
  }
}
