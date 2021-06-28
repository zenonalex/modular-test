import 'package:module_home/app/module/data/models/character_detail_model.dart';

abstract class CharacterDetailDatasource {
  Future<CharacterDetailModel> getCharacterDetail(String url);
}