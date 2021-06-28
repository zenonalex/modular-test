import 'package:commons_dependencies/main.dart';

@Injectable()
class SplashController {
  Future<void> currentUser() async {
    await Future.delayed(Duration(seconds: 2));

    Modular.to.pushReplacementNamed('/login');
  }
}
