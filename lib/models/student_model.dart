import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class StudentModel {
  String name;
  String roll;
  int bm;
  int em;
  int mm;
  int total;
  double am;
  StudentModel({
    required this.name,
    required this.roll,
    required this.bm,
    required this.em,
    required this.mm,
    required this.total,
    required this.am,
  });

  StudentModel copyWith({
    String? name,
    String? roll,
    int? bm,
    int? em,
    int? mm,
    int? total,
    double? am,
  }) {
    return StudentModel(
      name: name ?? this.name,
      roll: roll ?? this.roll,
      bm: bm ?? this.bm,
      em: em ?? this.em,
      mm: mm ?? this.mm,
      total: total ?? this.total,
      am: am ?? this.am,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'roll': roll,
      'bm': bm,
      'em': em,
      'mm': mm,
      'total': total,
      'am': am,
    };
  }

  factory StudentModel.fromMap(Map<String, dynamic> map) {
    return StudentModel(
      name: map['name'] as String,
      roll: map['roll'] as String,
      bm: map['bm'] as int,
      em: map['em'] as int,
      mm: map['mm'] as int,
      total: map['total'] as int,
      am: map['am'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory StudentModel.fromJson(String source) =>
      StudentModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'StudentModel(name: $name, roll: $roll, bm: $bm, em: $em, mm: $mm, total: $total, am: $am)';
  }

  @override
  bool operator ==(covariant StudentModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.roll == roll &&
        other.bm == bm &&
        other.em == em &&
        other.mm == mm &&
        other.total == total &&
        other.am == am;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        roll.hashCode ^
        bm.hashCode ^
        em.hashCode ^
        mm.hashCode ^
        total.hashCode ^
        am.hashCode;
  }
}

