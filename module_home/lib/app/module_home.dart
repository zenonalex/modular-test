import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'module/data/repositories/character_detail_repository_impl.dart';
import 'module/data/repositories/characters_repository_impl.dart';
import 'module/domain/usecases/get_character_details.dart';
import 'module/domain/usecases/get_characters.dart';
import 'module/external/datasource/poke_datasource.dart';
import 'module/external/datasource/poke_detail_datasource.dart';
import 'module/presenter/page/detail/detail_page.dart';
import 'module/presenter/page/detail/detail_store.dart';
import 'module/presenter/page/home/home_page.dart';
import 'module/presenter/page/home/home_store.dart';

class ModuleHome extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => CharactersRepositoryImpl(datasource: i())),
    Bind((i) => GetCharactersImpl(repository: i())),
    Bind((i) => PokeDatasource(dio: i())),
    Bind((i) => Dio()),
    Bind((i) => CharacterStore(getCharacters: i())),
    Bind((i) => CharacterDetailRepositoryImpl(datasource: i())),
    Bind((i) => GetCharacterDetailImpl(repository: i())),
    Bind((i) => PokeDetailDatasource(dio: i())),
    Bind((i) => CharacterDetailStore(getCharacterDetail: i())),
  ];

  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, arg) => HomePage()),
    ChildRoute('/detail',
        child: (_, args) => DetailPage(imageUrl: args.data),
        transition: TransitionType.fadeIn),
  ];
  
}


