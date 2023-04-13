import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

import '../../data/model/record.dart';

class FirestoreController extends GetxController {
  final _records = <Record>[].obs;

  final CollectionReference babyCollection =
      FirebaseFirestore.instance.collection('baby');

  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('baby').snapshots();

  late StreamSubscription<Object?> streamSubscription;

  List<Record> get entries => _records;

  suscribeUpdates() async {
    logInfo('suscribeLocationUpdates');
    streamSubscription = _usersStream.listen((event) {
      logInfo('Got new item from fireStore');
      _records.clear();
      for (var element in event.docs) {
        _records.add(Record.fromSnapshot(element));
      }
      logInfo('Got ${_records.length}');
    });
  }

  unsuscribeUpdates() {
    streamSubscription.cancel();
  }

  addEntry(name) {
    babyCollection
        .add({'name': name, 'votes': 0})
        .then((value) => logInfo("Baby added"))
        .catchError((onError) => logError("Failed to add baby $onError"));
  }

  updateEntry(Record record) {
    record.reference.update({'votes': record.votes + 1});
  }

  deleteEntry(Record record) {
    record.reference.delete();
  }
}
