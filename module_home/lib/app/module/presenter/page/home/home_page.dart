import 'package:commons/main.dart';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_state.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, CharacterStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          LoadButtonWidget(
              label: 'Carregar',
              onPressed: () {
                controller.loadCharacters();
              }),
          Expanded(
            child: Observer(builder: (_) {
              var state = controller.state;
              if (state is StartState) {
                return Center(
                  child: Text('characters.homeMessage'),
                );
              } else if (state is LoadingState) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is SucessState) {
                return ListView.builder(
                    itemCount: state.list.length,
                    itemBuilder: (_, index) {
                      return CardListWidget(
                        title: state.list[index].name,
                        onTap: (){
                          Modular.to.pushNamed('/detail',
                              arguments: state.list[index].url);
                        },
                      );
                    });
              } else {
                return Container();
              }
            }),
          )
        ],
      ),
    );
  }
}

