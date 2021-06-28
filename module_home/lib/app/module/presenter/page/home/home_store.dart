import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:module_home/app/module/domain/usecases/get_characters.dart';
import 'home_state.dart';


part 'home_store.g.dart';

@Injectable()
class CharacterStore = _CharacterStoreBase with _$CharacterStore;

abstract class _CharacterStoreBase with Store {
  final GetCharacters getCharacters;

  _CharacterStoreBase({
    required this.getCharacters,
  });

  Future<CharactersState> loadCharacters() async {
    setState(LoadingState());
    var result = await getCharacters();
    return result.fold((l) => ErrorState(), (r) => state = SucessState(r));
  }

  @observable
  bool isFavorite = false;

  @observable
  CharactersState state = StartState();

  @action
  setState(CharactersState value) => state = value;

  @action
  toggleIsFavorite() => isFavorite = !isFavorite;
}
