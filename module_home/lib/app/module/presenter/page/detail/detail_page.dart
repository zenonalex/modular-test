import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import 'detail_state.dart';
import 'detail_store.dart';



class DetailPage extends StatefulWidget {
  final String imageUrl;
  const DetailPage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState
    extends ModularState<DetailPage, CharacterDetailStore> {
  late TextEditingController textName = TextEditingController();
  late String name;

  @override
  void initState() {
    reaction<bool>((r) => controller.isValid, (isValid) async {
      if (controller.isValid) {
        return await Flushbar(
          title: 'detail.snackBarTitle',
          message: 'detail.snackBarMessage',
          duration: Duration(milliseconds: 2000),
        ).show(context);
      }
    });

    controller.loadCharacterDetail(widget.imageUrl);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('detail.title'),
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Observer(builder: (_) {
            var state = controller.state;
            if (state is LoadingState) {
              return Center(child: CircularProgressIndicator());
            } else if (state is SucessState) {
              name = state.list.name;
              return Center(
                child: Column(
                  children: [
                    Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(state.list.imageUrl),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('detail.name'),
                        Text(state.list.name),
                      ],
                    ),
                    Divider(),
                  ],
                ),
              );
            }
            return Container();
          }),
          Observer(builder: (_) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: textName,
                onChanged: (_) {
                  controller.setName(textName.text);
                  controller.validate(textName.text, name);
                },
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: controller.isValid ? Colors.green : Colors.red,
                      ),
                    ),
                    border: OutlineInputBorder(),
                    hintText: 'detail.hint'),
              ),
            );
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('detail.subTitle'),
              Observer(builder: (_) {
                return Text(controller.name);
              }),
            ],
          ),
        ],
      ),
    );
  }
}
