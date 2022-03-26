// To parse this JSON data, do
//
//     final serviceInfo = serviceInfoFromJson(jsonString);

import 'dart:convert';


ServiceInfo serviceInfoFromJson(String str) => ServiceInfo.fromJson(json.decode(str));

String serviceInfoToJson(ServiceInfo data) => json.encode(data.toJson());

class ServiceInfo {
  ServiceInfo({

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

  factory ServiceInfo.fromJson(Map<String, dynamic> json) => ServiceInfo(
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
    "misc": misc?.toJson(),
  };
}

class Datum {
  Datum({
    this.id,
    this.taskTitle,
    this.taskDesc,
    this.volunteerLimit,
    this.issueTitle,
    this.issueLoc,
    this.issueDesc,
    this.catId,
    this.estimatedDate,
    this.locId,
    this.isPopular,
    this.createdAt,
    this.active,
    this.updatedAt,
    this.inactiveFrom,
    this.inactiveReason,
    this.images,
  });

  int? id;
  int? estimatedDate;
  String? taskTitle;
  String? taskDesc;
  int? volunteerLimit;
  String? issueTitle;
  String? issueLoc;
  String? issueDesc;
  dynamic? catId;
  dynamic? locId;
  int? isPopular;
  DateTime? createdAt;
  int? active;
  DateTime? updatedAt;
  dynamic? inactiveFrom;
  dynamic? inactiveReason;
  List<Image>? images;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    estimatedDate: json['est_duration'],
    taskTitle: json["task_title"],
    taskDesc: json["task_desc"],
    volunteerLimit: json["volunteer_limit"],
    issueTitle: json["issue_title"],
    issueLoc: json["issue_loc"],
    issueDesc: json["issue_desc"],
    catId: json["cat_id"],
    locId: json["loc_id"],
    isPopular: json["is_popular"],
    createdAt: DateTime.parse(json["created_at"]),
    active: json["active"],
    updatedAt: DateTime.parse(json["updated_at"]),
    inactiveFrom: json["inactive_from"],
    inactiveReason: json["inactive_reason"],
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "task_title": taskTitle,
    "est_duration": estimatedDate,
    "task_desc": taskDesc,
    "volunteer_limit": volunteerLimit,
    "issue_title": issueTitle,
    "issue_loc": issueLoc,
    "issue_desc": issueDesc,
    "cat_id": catId,
    "loc_id": locId,
    "is_popular": isPopular,
    "created_at": createdAt?.toIso8601String(),
    "active": active,
    "updated_at": updatedAt?.toIso8601String(),
    "inactive_from": inactiveFrom,
    "inactive_reason": inactiveReason,
    "images": List<dynamic>.from(images!.map((x) => x.toJson())),
  };
}

class Image {
  Image({
    this.id,
    this.serviceId,
    this.imageName,
  });

  int? id;
  int? serviceId;
  String? imageName;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    id: json["id"],
    serviceId: json["service_id"],
    imageName: json["image_name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "service_id": serviceId,
    "image_name": imageName,
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
