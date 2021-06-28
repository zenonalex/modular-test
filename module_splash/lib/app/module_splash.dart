import 'package:flutter_modular/flutter_modular.dart';

import 'module/presenter/pages/splash/splash_page.dart';

class ModuleSplash extends Module {

  
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SplashPage()),
  ];
}
