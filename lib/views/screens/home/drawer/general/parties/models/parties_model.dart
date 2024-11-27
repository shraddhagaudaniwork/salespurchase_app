// To parse this JSON data, do
//
//     final partyModel = partyModelFromJson(jsonString);

import 'dart:convert';
//
// PartyModel partyModelFromJson(String str) => PartyModel.fromJson(json.decode(str));
//
// String partyModelToJson(PartyModel data) => json.encode(data.toJson());

class PartyModel {
  String message;
  List<Party> parties;

  PartyModel({
    required this.message,
    required this.parties,
  });

  factory PartyModel.fromMap({required Map data}) => PartyModel(
    message: data["message"],
    parties: List<Party>.from(data["parties"].map((x) => Party.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "parties": List<dynamic>.from(parties.map((x) => x.toJson())),
  };
}

class Party {
  String id;
  String name;
  String companyname;
  String email;
  int phonenumber;
  int receivables;
  int unusedcredits;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  Party({
    required this.id,
    required this.name,
    required this.companyname,
    required this.email,
    required this.phonenumber,
    required this.receivables,
    required this.unusedcredits,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory Party.fromJson(Map<String, dynamic> data) => Party(
    id: data["_id"],
    name: data["name"],
    companyname: data["companyname"],
    email: data["email"],
    phonenumber: data["phonenumber"],
    receivables: data["receivables"],
    unusedcredits: data["unusedcredits"],
    createdAt: DateTime.parse(data["createdAt"]),
    updatedAt: DateTime.parse(data["updatedAt"]),
    v: data["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "companyname": companyname,
    "email": email,
    "phonenumber": phonenumber,
    "receivables": receivables,
    "unusedcredits": unusedcredits,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "__v": v,
  };
}
