import 'package:module_home/app/module/data/datasource/character_detail_datasource.dart';
import 'package:module_home/app/module/data/models/character_detail_model.dart';

import 'package:commons/main.dart';
import 'package:dio/dio.dart';

class PokeDetailDatasource implements CharacterDetailDatasource {
  final Dio dio;
  PokeDetailDatasource({required this.dio});

  @override
  Future<CharacterDetailModel> getCharacterDetail(String url) async {
    final response = await dio.get(url);

    if (response.statusCode == 200) {
      final list = CharacterDetailModel.fromMap(response.data);

      return list;
    } else {
      throw DatasourceError();
    }
  }
}
