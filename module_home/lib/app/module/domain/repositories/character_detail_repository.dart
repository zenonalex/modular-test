import 'package:module_home/app/module/domain/entities/character_detail.dart';

import 'package:commons/main.dart';
import 'package:dartz/dartz.dart';

abstract class CharacterDetailRepository {
  Future<Either<Failure, CharacterDetail>> characterDetail(String url);
}