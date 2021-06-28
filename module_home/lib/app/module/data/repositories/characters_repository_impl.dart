import 'package:module_home/app/module/data/datasource/character_datasource.dart';
import 'package:module_home/app/module/domain/entities/character.dart';
import 'package:module_home/app/module/domain/repositories/characters_repository.dart';

import 'package:commons/main.dart';
import 'package:dartz/dartz.dart';

class CharactersRepositoryImpl implements CharactersRepository {
  final CharactersDatasource datasource;

  CharactersRepositoryImpl({
    required this.datasource,
  });

  @override
  Future<Either<Failure, List<Character>>> characters() async {
    try {
      final result = await datasource.getCharacters();

      return Right(result);
    } catch (e) {
      return Left(DatasourceError());
    }
  }
}
