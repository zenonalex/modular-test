import 'package:flutter/material.dart';

class SplashBoardWidget extends StatelessWidget {
  final String image;
  const SplashBoardWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.75,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image, package: "commons"),
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
