import 'package:commons_dependencies/main.dart';
import 'package:flutter/material.dart';
import 'package:commons/main.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

Future<void> currentUser() async {
  await Future.delayed(Duration(seconds: 4));

  Modular.to.pushReplacementNamed('/login');
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    currentUser();
    return Scaffold(
      body: Column(
        children: <Widget>[
          SplashBoardWidget(
            image: AppImages.splashImage,
          ),
        ],
      ),
    );
  }
}
