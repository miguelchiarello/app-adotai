// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pets_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PetsController on _PetsControllerBase, Store {
  final _$busyAtom = Atom(name: '_PetsControllerBase.busy');

  @override
  bool get busy {
    _$busyAtom.reportRead();
    return super.busy;
  }

  @override
  set busy(bool value) {
    _$busyAtom.reportWrite(value, super.busy, () {
      super.busy = value;
    });
  }

  final _$pictureAtom = Atom(name: '_PetsControllerBase.picture');

  @override
  String get picture {
    _$pictureAtom.reportRead();
    return super.picture;
  }

  @override
  set picture(String value) {
    _$pictureAtom.reportWrite(value, super.picture, () {
      super.picture = value;
    });
  }

  final _$nameAtom = Atom(name: '_PetsControllerBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$specieAtom = Atom(name: '_PetsControllerBase.specie');

  @override
  String get specie {
    _$specieAtom.reportRead();
    return super.specie;
  }

  @override
  set specie(String value) {
    _$specieAtom.reportWrite(value, super.specie, () {
      super.specie = value;
    });
  }

  final _$storyAtom = Atom(name: '_PetsControllerBase.story');

  @override
  String get story {
    _$storyAtom.reportRead();
    return super.story;
  }

  @override
  set story(String value) {
    _$storyAtom.reportWrite(value, super.story, () {
      super.story = value;
    });
  }

  final _$sizeAtom = Atom(name: '_PetsControllerBase.size');

  @override
  String get size {
    _$sizeAtom.reportRead();
    return super.size;
  }

  @override
  set size(String value) {
    _$sizeAtom.reportWrite(value, super.size, () {
      super.size = value;
    });
  }

  final _$breedAtom = Atom(name: '_PetsControllerBase.breed');

  @override
  String get breed {
    _$breedAtom.reportRead();
    return super.breed;
  }

  @override
  set breed(String value) {
    _$breedAtom.reportWrite(value, super.breed, () {
      super.breed = value;
    });
  }

  final _$genderAtom = Atom(name: '_PetsControllerBase.gender');

  @override
  String get gender {
    _$genderAtom.reportRead();
    return super.gender;
  }

  @override
  set gender(String value) {
    _$genderAtom.reportWrite(value, super.gender, () {
      super.gender = value;
    });
  }

  final _$natureAtom = Atom(name: '_PetsControllerBase.nature');

  @override
  String get nature {
    _$natureAtom.reportRead();
    return super.nature;
  }

  @override
  set nature(String value) {
    _$natureAtom.reportWrite(value, super.nature, () {
      super.nature = value;
    });
  }

  final _$ageAtom = Atom(name: '_PetsControllerBase.age');

  @override
  int get age {
    _$ageAtom.reportRead();
    return super.age;
  }

  @override
  set age(int value) {
    _$ageAtom.reportWrite(value, super.age, () {
      super.age = value;
    });
  }

  final _$chipAtom = Atom(name: '_PetsControllerBase.chip');

  @override
  String get chip {
    _$chipAtom.reportRead();
    return super.chip;
  }

  @override
  set chip(String value) {
    _$chipAtom.reportWrite(value, super.chip, () {
      super.chip = value;
    });
  }

  final _$castratedAtom = Atom(name: '_PetsControllerBase.castrated');

  @override
  bool get castrated {
    _$castratedAtom.reportRead();
    return super.castrated;
  }

  @override
  set castrated(bool value) {
    _$castratedAtom.reportWrite(value, super.castrated, () {
      super.castrated = value;
    });
  }

  final _$listAtom = Atom(name: '_PetsControllerBase.list');

  @override
  ObservableList<PetsModel> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(ObservableList<PetsModel> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  final _$fetchAsyncAction = AsyncAction('_PetsControllerBase.fetch');

  @override
  Future<List<PetsModel>> fetch() {
    return _$fetchAsyncAction.run(() => super.fetch());
  }

  final _$createAsyncAction = AsyncAction('_PetsControllerBase.create');

  @override
  Future<PetsModel> create() {
    return _$createAsyncAction.run(() => super.create());
  }

  final _$updateAsyncAction = AsyncAction('_PetsControllerBase.update');

  @override
  Future<dynamic> update() {
    return _$updateAsyncAction.run(() => super.update());
  }

  final _$deleteAsyncAction = AsyncAction('_PetsControllerBase.delete');

  @override
  Future<dynamic> delete() {
    return _$deleteAsyncAction.run(() => super.delete());
  }

  final _$_PetsControllerBaseActionController =
      ActionController(name: '_PetsControllerBase');

  @override
  void setBusy(dynamic value) {
    final _$actionInfo = _$_PetsControllerBaseActionController.startAction(
        name: '_PetsControllerBase.setBusy');
    try {
      return super.setBusy(value);
    } finally {
      _$_PetsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPicture(dynamic value) {
    final _$actionInfo = _$_PetsControllerBaseActionController.startAction(
        name: '_PetsControllerBase.setPicture');
    try {
      return super.setPicture(value);
    } finally {
      _$_PetsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setName(dynamic value) {
    final _$actionInfo = _$_PetsControllerBaseActionController.startAction(
        name: '_PetsControllerBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$_PetsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSpecie(dynamic value) {
    final _$actionInfo = _$_PetsControllerBaseActionController.startAction(
        name: '_PetsControllerBase.setSpecie');
    try {
      return super.setSpecie(value);
    } finally {
      _$_PetsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setStory(dynamic value) {
    final _$actionInfo = _$_PetsControllerBaseActionController.startAction(
        name: '_PetsControllerBase.setStory');
    try {
      return super.setStory(value);
    } finally {
      _$_PetsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSize(dynamic value) {
    final _$actionInfo = _$_PetsControllerBaseActionController.startAction(
        name: '_PetsControllerBase.setSize');
    try {
      return super.setSize(value);
    } finally {
      _$_PetsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBreed(dynamic value) {
    final _$actionInfo = _$_PetsControllerBaseActionController.startAction(
        name: '_PetsControllerBase.setBreed');
    try {
      return super.setBreed(value);
    } finally {
      _$_PetsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setGender(dynamic value) {
    final _$actionInfo = _$_PetsControllerBaseActionController.startAction(
        name: '_PetsControllerBase.setGender');
    try {
      return super.setGender(value);
    } finally {
      _$_PetsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNature(dynamic value) {
    final _$actionInfo = _$_PetsControllerBaseActionController.startAction(
        name: '_PetsControllerBase.setNature');
    try {
      return super.setNature(value);
    } finally {
      _$_PetsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAge(dynamic value) {
    final _$actionInfo = _$_PetsControllerBaseActionController.startAction(
        name: '_PetsControllerBase.setAge');
    try {
      return super.setAge(value);
    } finally {
      _$_PetsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setChip(dynamic value) {
    final _$actionInfo = _$_PetsControllerBaseActionController.startAction(
        name: '_PetsControllerBase.setChip');
    try {
      return super.setChip(value);
    } finally {
      _$_PetsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCastrated(dynamic value) {
    final _$actionInfo = _$_PetsControllerBaseActionController.startAction(
        name: '_PetsControllerBase.setCastrated');
    try {
      return super.setCastrated(value);
    } finally {
      _$_PetsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addPets(dynamic value) {
    final _$actionInfo = _$_PetsControllerBaseActionController.startAction(
        name: '_PetsControllerBase.addPets');
    try {
      return super.addPets(value);
    } finally {
      _$_PetsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
busy: ${busy},
picture: ${picture},
name: ${name},
specie: ${specie},
story: ${story},
size: ${size},
breed: ${breed},
gender: ${gender},
nature: ${nature},
age: ${age},
chip: ${chip},
castrated: ${castrated},
list: ${list}
    ''';
  }
}
