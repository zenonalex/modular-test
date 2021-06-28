import 'package:commons_dependencies/main.dart';
import 'module/presenter/page/login/login_page.dart';

class ModuleLogin extends Module{
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => LoginPage()),
  ];
}