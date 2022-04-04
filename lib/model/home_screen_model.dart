import 'dart:convert';

HomeModel homeModelFromJson(String str) => HomeModel.fromJson(json.decode(str));

String homeModelToJson(HomeModel data) => json.encode(data.toJson());

class HomeModel {
  HomeModel({
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

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
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
    this.taskTitle,
    this.image,
  });

  int? id;
  String? taskTitle;
  String? image;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        taskTitle: json["task_title"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "task_title": taskTitle,
        "image": image,
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
