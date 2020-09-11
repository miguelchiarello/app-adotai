import 'package:flutter/material.dart';

import 'package:adotai/modules/pets/pets_model.dart';

class PetsCard extends StatelessWidget {
  final PetsModel pet;

  const PetsCard({
    Key key,
    this.pet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(pet.name ?? ''),
        subtitle: Text('${pet.specie} (${pet.breed})'),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(pet.picture ?? ''),
          child: Text(pet?.name?.substring(0, 1)?.toUpperCase() ?? '?'),
        ),
      ),
    );
  }
}
