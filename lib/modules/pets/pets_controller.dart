import 'package:adotai/modules/pets/pets_model.dart';
import 'package:adotai/modules/pets/pets_repository.dart';
import 'package:adotai/shared/helpers/firebase_intercept.dart';
import 'package:mobx/mobx.dart';
part 'pets_controller.g.dart';

class PetsController = _PetsControllerBase with _$PetsController;

abstract class _PetsControllerBase with Store {
  PetsRepository _repository;

  _PetsControllerBase() {
    _repository = PetsRepository();
  }

  @observable
  bool busy = false;

  @observable
  String picture;

  @observable
  String name;

  @observable
  String specie;

  @observable
  String story;

  @observable
  String size = 'Médio';

  @observable
  String breed;

  @observable
  String gender = 'Macho';

  @observable
  String nature;

  @observable
  int age;

  @observable
  String chip;

  @observable
  bool castrated = false;

  @action
  void setBusy(value) => busy = value;

  @action
  void setPicture(value) => picture = value;

  @action
  void setName(value) => name = value;

  @action
  void setSpecie(value) => specie = value;

  @action
  void setStory(value) => story = value;

  @action
  void setSize(value) => size = value;

  @action
  void setBreed(value) => breed = value;

  @action
  void setGender(value) => gender = value;

  @action
  void setNature(value) => nature = value;

  @action
  void setAge(value) => age = value;

  @action
  void setChip(value) => chip = value;

  @action
  void setCastrated(value) => castrated = value;

  @observable
  ObservableList<PetsModel> list = ObservableList<PetsModel>();

  @action
  void addPets(value) {
    busy = true;
    list.add(value);
    busy = false;
  }

  @action
  Future<List<PetsModel>> fetch() async {
    busy = true;
    return await FirebaseIntercept.intercept(() async {
      final snapshot =
          await _repository.getDocuments().whenComplete(() => busy = false);
      list = snapshot.documents
          .map((pet) => PetsModel.fromMap(pet.data))
          .toList()
          .asObservable();
      return list;
    });
  }

  @action
  Future<PetsModel> create() async {
    busy = true;
    return await FirebaseIntercept.intercept(() async {
      final pet = PetsModel(
        picture: picture,
        name: name,
        specie: specie,
        story: story,
        size: size,
        breed: breed,
        gender: gender,
        nature: nature,
        age: age,
        chip: chip,
        castrated: castrated,
      );

      await _repository.create(pet).whenComplete(() => busy = false);
      return pet;
    });
  }

  @action
  Future update() async {
    return await FirebaseIntercept.intercept(() async {});
  }

  @action
  Future delete() async {
    return await FirebaseIntercept.intercept(() async {});
  }
}
