// To parse this JSON data, do
//
//     final getCategoryModel = getCategoryModelFromJson(jsonString);

import 'dart:convert';

GetCategoryModel getCategoryModelFromJson(String str) => GetCategoryModel.fromJson(json.decode(str));

String getCategoryModelToJson(GetCategoryModel data) => json.encode(data.toJson());

class GetCategoryModel {
  GetCategoryModel({
    this.status,
    this.code,
    this.message,
    this.data,
    this.misc,
  });

  int? status;
  int? code;
  String? message;
  List<List<Datum>>? data;
  Misc? misc;

  factory GetCategoryModel.fromJson(Map<String, dynamic> json) => GetCategoryModel(
    status: json["status"],
    code: json["code"],
    message: json["message"],
    data: List<List<Datum>>.from(json["data"].map((x) => List<Datum>.from(x.map((x) => Datum.fromJson(x))))),
    misc: Misc.fromJson(json["misc"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "code": code,
    "message": message,
    "data": List<dynamic>.from(data!.map((x) => List<dynamic>.from(x.map((x) => x.toJson())))),
    "misc": misc!.toJson(),
  };
}

class Datum {
  Datum({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}

class Misc {
  Misc({
    this.imagePlaceholder,
  });

  String? imagePlaceholder;

  factory Misc.fromJson(Map<String, dynamic> json) => Misc(
    imagePlaceholder: json["image_placeholder"],
  );

  Map<String, dynamic> toJson() => {
    "image_placeholder": imagePlaceholder,
  };
}
