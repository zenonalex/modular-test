import 'package:flutter/material.dart';

class CharactherBoardWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String label;

  const CharactherBoardWidget({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageUrl),
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label),
          Text(name),
        ],
      ),
    ]));
  }
}
