import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CabinetRecord extends FirestoreRecord {
  CabinetRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id_cabinet" field.
  int? _idCabinet;
  int get idCabinet => _idCabinet ?? 0;
  bool hasIdCabinet() => _idCabinet != null;

  // "nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  bool hasNom() => _nom != null;

  // "adresse" field.
  String? _adresse;
  String get adresse => _adresse ?? '';
  bool hasAdresse() => _adresse != null;

  // "telephone" field.
  String? _telephone;
  String get telephone => _telephone ?? '';
  bool hasTelephone() => _telephone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "specialite" field.
  String? _specialite;
  String get specialite => _specialite ?? '';
  bool hasSpecialite() => _specialite != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _idCabinet = castToType<int>(snapshotData['id_cabinet']);
    _nom = snapshotData['nom'] as String?;
    _adresse = snapshotData['adresse'] as String?;
    _telephone = snapshotData['telephone'] as String?;
    _email = snapshotData['email'] as String?;
    _specialite = snapshotData['specialite'] as String?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Cabinet');

  static Stream<CabinetRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CabinetRecord.fromSnapshot(s));

  static Future<CabinetRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CabinetRecord.fromSnapshot(s));

  static CabinetRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CabinetRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CabinetRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CabinetRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CabinetRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CabinetRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCabinetRecordData({
  int? idCabinet,
  String? nom,
  String? adresse,
  String? telephone,
  String? email,
  String? specialite,
  String? description,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_cabinet': idCabinet,
      'nom': nom,
      'adresse': adresse,
      'telephone': telephone,
      'email': email,
      'specialite': specialite,
      'description': description,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class CabinetRecordDocumentEquality implements Equality<CabinetRecord> {
  const CabinetRecordDocumentEquality();

  @override
  bool equals(CabinetRecord? e1, CabinetRecord? e2) {
    return e1?.idCabinet == e2?.idCabinet &&
        e1?.nom == e2?.nom &&
        e1?.adresse == e2?.adresse &&
        e1?.telephone == e2?.telephone &&
        e1?.email == e2?.email &&
        e1?.specialite == e2?.specialite &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image;
  }

  @override
  int hash(CabinetRecord? e) => const ListEquality().hash([
        e?.idCabinet,
        e?.nom,
        e?.adresse,
        e?.telephone,
        e?.email,
        e?.specialite,
        e?.description,
        e?.image
      ]);

  @override
  bool isValidKey(Object? o) => o is CabinetRecord;
}
