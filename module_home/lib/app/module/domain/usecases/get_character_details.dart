import 'package:commons/main.dart';
import 'package:dartz/dartz.dart';

import 'package:module_home/app/module/domain/entities/character_detail.dart';
import 'package:module_home/app/module/domain/repositories/character_detail_repository.dart';

abstract class GetCharacterDetail {
  Future<Either<Failure, CharacterDetail>> call(String url);
}

class GetCharacterDetailImpl implements GetCharacterDetail {
  CharacterDetailRepository repository;

  GetCharacterDetailImpl({required this.repository});

  @override
  Future<Either<Failure, CharacterDetail>> call(String url) async{
    return repository.characterDetail(url);
  }
  
}
