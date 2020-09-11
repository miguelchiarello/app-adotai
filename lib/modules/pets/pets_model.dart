import 'dart:convert';

class PetsModel {
  String picture;
  String name;
  String specie;
  String story;
  String size;
  String breed;
  String gender;
  String nature;
  int age;
  String chip;
  bool castrated;

  PetsModel({
    this.picture,
    this.name,
    this.specie,
    this.story,
    this.size,
    this.breed,
    this.gender,
    this.nature,
    this.age,
    this.chip,
    this.castrated,
  });

  PetsModel copyWith({
    String picture,
    String name,
    String specie,
    String story,
    String size,
    String breed,
    String gender,
    String nature,
    int age,
    String chip,
    bool castrated,
  }) {
    return PetsModel(
      picture: picture ?? this.picture,
      name: name ?? this.name,
      specie: specie ?? this.specie,
      story: story ?? this.story,
      size: size ?? this.size,
      breed: breed ?? this.breed,
      gender: gender ?? this.gender,
      nature: nature ?? this.nature,
      age: age ?? this.age,
      chip: chip ?? this.chip,
      castrated: castrated ?? this.castrated,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'picture': picture,
      'name': name,
      'specie': specie,
      'story': story,
      'size': size,
      'breed': breed,
      'gender': gender,
      'nature': nature,
      'age': age,
      'chip': chip,
      'castrated': castrated,
    };
  }

  static PetsModel fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return PetsModel(
      picture: map['picture'],
      name: map['name'],
      specie: map['specie'],
      story: map['story'],
      size: map['size'],
      breed: map['breed'],
      gender: map['gender'],
      nature: map['nature'],
      age: map['age'],
      chip: map['chip'],
      castrated: map['castrated'],
    );
  }

  String toJson() => json.encode(toMap());

  static PetsModel fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'PetsModel(picture: $picture, name: $name, specie: $specie, story: $story, size: $size, breed: $breed, gender: $gender, nature: $nature, age: $age, chip: $chip, castrated: $castrated)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is PetsModel &&
        o.picture == picture &&
        o.name == name &&
        o.specie == specie &&
        o.story == story &&
        o.size == size &&
        o.breed == breed &&
        o.gender == gender &&
        o.nature == nature &&
        o.age == age &&
        o.chip == chip &&
        o.castrated == castrated;
  }

  @override
  int get hashCode {
    return picture.hashCode ^
        name.hashCode ^
        specie.hashCode ^
        story.hashCode ^
        size.hashCode ^
        breed.hashCode ^
        gender.hashCode ^
        nature.hashCode ^
        age.hashCode ^
        chip.hashCode ^
        castrated.hashCode;
  }
}
