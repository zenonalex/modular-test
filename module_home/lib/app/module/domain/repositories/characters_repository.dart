import 'package:module_home/app/module/domain/entities/character.dart';

import 'package:commons/main.dart';
import 'package:dartz/dartz.dart';

abstract class CharactersRepository {
  Future<Either<Failure, List<Character>>> characters();
}
