import 'package:flutter/material.dart';

class ImageBoardWidget extends StatelessWidget {
  final String image;
  const ImageBoardWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height* 0.40,
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
