import 'package:module_home/app/module/domain/entities/character.dart';
import 'package:module_home/app/module/domain/repositories/characters_repository.dart';

import 'package:commons/main.dart';
import 'package:dartz/dartz.dart';

abstract class GetCharacters {
  Future<Either<Failure, List<Character>>> call();
}

class GetCharactersImpl implements GetCharacters {
  CharactersRepository repository;

  GetCharactersImpl({required this.repository});

  @override
  Future<Either<Failure, List<Character>>> call() async {
    return repository.characters();
  }
}
