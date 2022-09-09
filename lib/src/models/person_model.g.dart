// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_model.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class PersonModelCollectionReference
    implements
        PersonModelQuery,
        FirestoreCollectionReference<PersonModel, PersonModelQuerySnapshot> {
  factory PersonModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$PersonModelCollectionReference;

  static PersonModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return PersonModel.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    PersonModel value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<PersonModel> get reference;

  @override
  PersonModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<PersonModelDocumentReference> add(PersonModel value);
}

class _$PersonModelCollectionReference extends _$PersonModelQuery
    implements PersonModelCollectionReference {
  factory _$PersonModelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$PersonModelCollectionReference._(
      firestore.collection('persons').withConverter(
            fromFirestore: PersonModelCollectionReference.fromFirestore,
            toFirestore: PersonModelCollectionReference.toFirestore,
          ),
    );
  }

  _$PersonModelCollectionReference._(
    CollectionReference<PersonModel> reference,
  ) : super(reference, reference);

  String get path => reference.path;

  @override
  CollectionReference<PersonModel> get reference =>
      super.reference as CollectionReference<PersonModel>;

  @override
  PersonModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return PersonModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<PersonModelDocumentReference> add(PersonModel value) {
    return reference
        .add(value)
        .then((ref) => PersonModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$PersonModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class PersonModelDocumentReference extends FirestoreDocumentReference<
    PersonModel, PersonModelDocumentSnapshot> {
  factory PersonModelDocumentReference(
          DocumentReference<PersonModel> reference) =
      _$PersonModelDocumentReference;

  DocumentReference<PersonModel> get reference;

  /// A reference to the [PersonModelCollectionReference] containing this document.
  PersonModelCollectionReference get parent {
    return _$PersonModelCollectionReference(reference.firestore);
  }

  @override
  Stream<PersonModelDocumentSnapshot> snapshots();

  @override
  Future<PersonModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> update({
    String firstName,
    String lastName,
    int birthYear,
    String email,
    String token,
    String phone,
  });

  Future<void> set(PersonModel value);
}

class _$PersonModelDocumentReference
    extends FirestoreDocumentReference<PersonModel, PersonModelDocumentSnapshot>
    implements PersonModelDocumentReference {
  _$PersonModelDocumentReference(this.reference);

  @override
  final DocumentReference<PersonModel> reference;

  /// A reference to the [PersonModelCollectionReference] containing this document.
  PersonModelCollectionReference get parent {
    return _$PersonModelCollectionReference(reference.firestore);
  }

  @override
  Stream<PersonModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return PersonModelDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<PersonModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return PersonModelDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<void> delete() {
    return reference.delete();
  }

  Future<void> update({
    Object? firstName = _sentinel,
    Object? lastName = _sentinel,
    Object? birthYear = _sentinel,
    Object? email = _sentinel,
    Object? token = _sentinel,
    Object? phone = _sentinel,
  }) async {
    final json = {
      if (firstName != _sentinel) "firstName": firstName as String,
      if (lastName != _sentinel) "lastName": lastName as String,
      if (birthYear != _sentinel) "birthYear": birthYear as int,
      if (email != _sentinel) "email": email as String,
      if (token != _sentinel) "token": token as String,
      if (phone != _sentinel) "phone": phone as String,
    };

    return reference.update(json);
  }

  Future<void> set(PersonModel value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is PersonModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class PersonModelDocumentSnapshot
    extends FirestoreDocumentSnapshot<PersonModel> {
  PersonModelDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<PersonModel> snapshot;

  @override
  PersonModelDocumentReference get reference {
    return PersonModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final PersonModel? data;
}

abstract class PersonModelQuery
    implements QueryReference<PersonModel, PersonModelQuerySnapshot> {
  @override
  PersonModelQuery limit(int limit);

  @override
  PersonModelQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  PersonModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    PersonModelDocumentSnapshot? startAtDocument,
    PersonModelDocumentSnapshot? endAtDocument,
    PersonModelDocumentSnapshot? endBeforeDocument,
    PersonModelDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  PersonModelQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  PersonModelQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  PersonModelQuery whereFirstName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  PersonModelQuery whereLastName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  PersonModelQuery whereBirthYear({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  });
  PersonModelQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  PersonModelQuery whereToken({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  PersonModelQuery wherePhone({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });

  PersonModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    PersonModelDocumentSnapshot? startAtDocument,
    PersonModelDocumentSnapshot? endAtDocument,
    PersonModelDocumentSnapshot? endBeforeDocument,
    PersonModelDocumentSnapshot? startAfterDocument,
  });

  PersonModelQuery orderByFirstName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    PersonModelDocumentSnapshot? startAtDocument,
    PersonModelDocumentSnapshot? endAtDocument,
    PersonModelDocumentSnapshot? endBeforeDocument,
    PersonModelDocumentSnapshot? startAfterDocument,
  });

  PersonModelQuery orderByLastName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    PersonModelDocumentSnapshot? startAtDocument,
    PersonModelDocumentSnapshot? endAtDocument,
    PersonModelDocumentSnapshot? endBeforeDocument,
    PersonModelDocumentSnapshot? startAfterDocument,
  });

  PersonModelQuery orderByBirthYear({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    PersonModelDocumentSnapshot? startAtDocument,
    PersonModelDocumentSnapshot? endAtDocument,
    PersonModelDocumentSnapshot? endBeforeDocument,
    PersonModelDocumentSnapshot? startAfterDocument,
  });

  PersonModelQuery orderByEmail({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    PersonModelDocumentSnapshot? startAtDocument,
    PersonModelDocumentSnapshot? endAtDocument,
    PersonModelDocumentSnapshot? endBeforeDocument,
    PersonModelDocumentSnapshot? startAfterDocument,
  });

  PersonModelQuery orderByToken({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    PersonModelDocumentSnapshot? startAtDocument,
    PersonModelDocumentSnapshot? endAtDocument,
    PersonModelDocumentSnapshot? endBeforeDocument,
    PersonModelDocumentSnapshot? startAfterDocument,
  });

  PersonModelQuery orderByPhone({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    PersonModelDocumentSnapshot? startAtDocument,
    PersonModelDocumentSnapshot? endAtDocument,
    PersonModelDocumentSnapshot? endBeforeDocument,
    PersonModelDocumentSnapshot? startAfterDocument,
  });
}

class _$PersonModelQuery
    extends QueryReference<PersonModel, PersonModelQuerySnapshot>
    implements PersonModelQuery {
  _$PersonModelQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<PersonModel> reference;

  PersonModelQuerySnapshot _decodeSnapshot(
    QuerySnapshot<PersonModel> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return PersonModelQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<PersonModelDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: PersonModelDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return PersonModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<PersonModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<PersonModelQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  PersonModelQuery limit(int limit) {
    return _$PersonModelQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  PersonModelQuery limitToLast(int limit) {
    return _$PersonModelQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  PersonModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PersonModelDocumentSnapshot? startAtDocument,
    PersonModelDocumentSnapshot? endAtDocument,
    PersonModelDocumentSnapshot? endBeforeDocument,
    PersonModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(fieldPath, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$PersonModelQuery(query, _collection);
  }

  PersonModelQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$PersonModelQuery(
      reference.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      _collection,
    );
  }

  PersonModelQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$PersonModelQuery(
      reference.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  PersonModelQuery whereFirstName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$PersonModelQuery(
      reference.where(
        _$PersonModelFieldMap["firstName"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  PersonModelQuery whereLastName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$PersonModelQuery(
      reference.where(
        _$PersonModelFieldMap["lastName"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  PersonModelQuery whereBirthYear({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  }) {
    return _$PersonModelQuery(
      reference.where(
        _$PersonModelFieldMap["birthYear"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  PersonModelQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$PersonModelQuery(
      reference.where(
        _$PersonModelFieldMap["email"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  PersonModelQuery whereToken({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$PersonModelQuery(
      reference.where(
        _$PersonModelFieldMap["token"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  PersonModelQuery wherePhone({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$PersonModelQuery(
      reference.where(
        _$PersonModelFieldMap["phone"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  PersonModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PersonModelDocumentSnapshot? startAtDocument,
    PersonModelDocumentSnapshot? endAtDocument,
    PersonModelDocumentSnapshot? endBeforeDocument,
    PersonModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(FieldPath.documentId, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$PersonModelQuery(query, _collection);
  }

  PersonModelQuery orderByFirstName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PersonModelDocumentSnapshot? startAtDocument,
    PersonModelDocumentSnapshot? endAtDocument,
    PersonModelDocumentSnapshot? endBeforeDocument,
    PersonModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$PersonModelFieldMap["firstName"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$PersonModelQuery(query, _collection);
  }

  PersonModelQuery orderByLastName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PersonModelDocumentSnapshot? startAtDocument,
    PersonModelDocumentSnapshot? endAtDocument,
    PersonModelDocumentSnapshot? endBeforeDocument,
    PersonModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$PersonModelFieldMap["lastName"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$PersonModelQuery(query, _collection);
  }

  PersonModelQuery orderByBirthYear({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PersonModelDocumentSnapshot? startAtDocument,
    PersonModelDocumentSnapshot? endAtDocument,
    PersonModelDocumentSnapshot? endBeforeDocument,
    PersonModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$PersonModelFieldMap["birthYear"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$PersonModelQuery(query, _collection);
  }

  PersonModelQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PersonModelDocumentSnapshot? startAtDocument,
    PersonModelDocumentSnapshot? endAtDocument,
    PersonModelDocumentSnapshot? endBeforeDocument,
    PersonModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$PersonModelFieldMap["email"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$PersonModelQuery(query, _collection);
  }

  PersonModelQuery orderByToken({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PersonModelDocumentSnapshot? startAtDocument,
    PersonModelDocumentSnapshot? endAtDocument,
    PersonModelDocumentSnapshot? endBeforeDocument,
    PersonModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$PersonModelFieldMap["token"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$PersonModelQuery(query, _collection);
  }

  PersonModelQuery orderByPhone({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PersonModelDocumentSnapshot? startAtDocument,
    PersonModelDocumentSnapshot? endAtDocument,
    PersonModelDocumentSnapshot? endBeforeDocument,
    PersonModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$PersonModelFieldMap["phone"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$PersonModelQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$PersonModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class PersonModelQuerySnapshot extends FirestoreQuerySnapshot<PersonModel,
    PersonModelQueryDocumentSnapshot> {
  PersonModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<PersonModel> snapshot;

  @override
  final List<PersonModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<PersonModelDocumentSnapshot>> docChanges;
}

class PersonModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<PersonModel>
    implements PersonModelDocumentSnapshot {
  PersonModelQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<PersonModel> snapshot;

  @override
  PersonModelDocumentReference get reference {
    return PersonModelDocumentReference(snapshot.reference);
  }

  @override
  final PersonModel data;
}

// **************************************************************************
// ValidatorGenerator
// **************************************************************************

void _$assertPersonModel(PersonModel instance) {
  const Min(1920).validate(instance.birthYear, "birthYear");
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonModel _$PersonModelFromJson(Map<String, dynamic> json) => PersonModel(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      birthYear: json['birthYear'] as int,
      email: json['email'] as String,
      token: json['token'] as String,
      phone: json['phone'] as String,
    );

const _$PersonModelFieldMap = <String, String>{
  'firstName': 'firstName',
  'lastName': 'lastName',
  'birthYear': 'birthYear',
  'email': 'email',
  'token': 'token',
  'phone': 'phone',
};

Map<String, dynamic> _$PersonModelToJson(PersonModel instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'birthYear': instance.birthYear,
      'email': instance.email,
      'token': instance.token,
      'phone': instance.phone,
    };
