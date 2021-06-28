import 'package:module_home/app/module/data/datasource/character_detail_datasource.dart';
import 'package:module_home/app/module/domain/entities/character_detail.dart';
import 'package:module_home/app/module/domain/repositories/character_detail_repository.dart';

import 'package:commons/main.dart';

import 'package:dartz/dartz.dart';

class CharacterDetailRepositoryImpl implements CharacterDetailRepository {
  final CharacterDetailDatasource datasource;

  CharacterDetailRepositoryImpl({
    required this.datasource,
  });

  @override
  Future<Either<Failure, CharacterDetail>> characterDetail(String url) async{
    try {
      final result = await datasource.getCharacterDetail(url);

      return Right(result);
    } catch (e) {
      return Left(DatasourceError());
    }
  }

 
}