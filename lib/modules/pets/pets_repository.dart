import 'package:adotai/modules/pets/pets_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PetsRepository {
  final _collection = Firestore.instance.collection('pets');

  Future<QuerySnapshot> getDocuments() async {
    return _collection.getDocuments();
  }

  Future<DocumentSnapshot> getById(String id) async {
    return _collection.document(id).get();
  }

  Future<Stream<QuerySnapshot>> stream() async {
    return _collection.snapshots();
  }

  Future<DocumentReference> create(PetsModel model) async {
    return _collection.add(model.toMap());
  }

  Future update(String id, PetsModel model) {
    return _collection.document(id).updateData(model.toMap());
  }

  Future delete(String id) async {
    return _collection.document(id).delete();
  }
}
