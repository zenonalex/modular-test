import 'package:flutter_modular/flutter_modular.dart';
import 'package:module_login/main.dart';
import 'package:module_splash/main.dart';
import 'package:module_home/main.dart';

class AppModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ModuleRoute(
      '/splash',
      module: ModuleSplash(),
      transition: TransitionType.fadeIn,
    ),
    ModuleRoute(
      '/login',
      module: ModuleLogin(),
      transition: TransitionType.fadeIn,
    ),
    ModuleRoute(
      Modular.initialRoute,
      module: ModuleHome(),
      transition: TransitionType.fadeIn,
    ),
  ];
}
