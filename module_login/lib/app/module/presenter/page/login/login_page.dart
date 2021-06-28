import 'package:commons/main.dart';
import 'package:commons_dependencies/main.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_triple/flutter_triple.dart';
import 'package:module_login/app/module/presenter/page/login/login_store.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final controller1 = TextEditingController();
    final controller2 = TextEditingController();

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: AppColors.background,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ImageBoardWidget(
                  image: AppImages.loginImage,
                ),
                TextFieldWidget(
                  label: "Usuário",
                  controller: controller1,
                ),
                TextFieldWidget(
                  label: "Senha",
                  controller: controller2,
                ),
                LoadButtonWidget(
                  label: 'Entrar',
                  onPressed: () {
                    Modular.to.pushReplacementNamed(Modular.initialRoute);
                  },
                ),
                // ScopedBuilder(
                //   store: store,
                //   onState: (context,state) => Text('$state'),
                //   onError: (context, error)=>Text(error.toString()),
                //   onLoading: (context)=> CircularProgressIndicator(),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
