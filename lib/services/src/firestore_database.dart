import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffeetakeaway/models/src/coffee.dart';

import 'firestore_path.dart';

class FirestoreService {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  FirestoreService._();

  static final FirestoreService _service = FirestoreService._();
  factory FirestoreService() => _service;

  static FirestoreService get instance => _service;

  Stream<List<Coffee>> getCoffees() => _firebaseFirestore
          .collection(FirestoreApiPath.coffees)
          .snapshots()
          .map((QuerySnapshot querySnapshot) {
        return querySnapshot.docs.map(
          (QueryDocumentSnapshot snapshot) {
            final Map<String, dynamic> data =
                snapshot.data() as Map<String, dynamic>;

            data['id'] = snapshot.id;

            return Coffee.fromJson(data);
          },
        ).toList();
      });

  Stream<Coffee> getCoffee(String id) => _firebaseFirestore
          .doc(FirestoreApiPath.coffee(id))
          .snapshots()
          .map((DocumentSnapshot snapshot) {
        final Map<String, dynamic> data =
            snapshot.data()! as Map<String, dynamic>;
        data['id'] = snapshot.id;
        return Coffee.fromJson(data);
      });
}
