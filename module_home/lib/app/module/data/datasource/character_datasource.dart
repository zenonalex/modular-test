import 'package:module_home/app/module/data/models/character_model.dart';

abstract class CharactersDatasource {
  Future<List<CharacterModel>> getCharacters();
}
