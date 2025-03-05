// To parse this JSON data, do
//
//     final userDetails = userDetailsFromJson(jsonString);

import 'dart:convert';

UserDetails userDetailsFromJson(String str) =>
    UserDetails.fromJson(json.decode(str));

String userDetailsToJson(UserDetails data) => json.encode(data.toJson());

class UserDetails {
  List<UserDatum>? userData;
  List<CommentList>? commentList;

  UserDetails({
    this.userData,
    this.commentList,
  });

  factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
        userData: json["user_data"] == null
            ? []
            : List<UserDatum>.from(
                json["user_data"]!.map((x) => UserDatum.fromJson(x))),
        commentList: json["comment_list"] == null
            ? []
            : List<CommentList>.from(
                json["comment_list"]!.map((x) => CommentList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "user_data": userData == null
            ? []
            : List<dynamic>.from(userData!.map((x) => x.toJson())),
        "comment_list": commentList == null
            ? []
            : List<dynamic>.from(commentList!.map((x) => x.toJson())),
      };
}

class CommentList {
  int? id;
  String? comment;

  CommentList({
    this.id,
    this.comment,
  });

  factory CommentList.fromJson(Map<String, dynamic> json) => CommentList(
        id: json["id"],
        comment: json["comment"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "comment": comment,
      };
}

class UserDatum {
  int? id;
  String? username;
  String? profileImage;
  String? address;
  String? sscBatch;
  String? phoneNumber;
  String? designation;
  bool? isTeacher; // <-- Add this field to mirror 'is_teacher'
  List<Memory>? memories;

  UserDatum({
    this.id,
    this.username,
    this.profileImage,
    this.address,
    this.sscBatch,
    this.phoneNumber,
    this.designation,
    this.isTeacher,
    this.memories,
  });

  factory UserDatum.fromJson(Map<String, dynamic> json) => UserDatum(
        id: json["id"],
        sscBatch: json["ssc_batch"],
        username: json["username"],
        phoneNumber: json["phone_number"],
        designation: json["designation"],
        profileImage: json["profile_image"],
        address: json["address"],
        isTeacher: json["is_teacher"], // <-- important: read from "is_teacher"
        memories: json["memories"] == null
            ? []
            : List<Memory>.from(
                json["memories"]!.map((x) => Memory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "ssc_batch": sscBatch,
        "phone_number": phoneNumber,
        "designation": designation,
        "profile_image": profileImage,
        "address": address,
        "is_teacher": isTeacher, // <-- important: output as "is_teacher"
        "memories": memories == null
            ? []
            : List<dynamic>.from(memories!.map((x) => x.toJson())),
      };
}

class Memory {
  int? id;
  int? userId;
  dynamic image;
  String? description;

  Memory({
    this.id,
    this.userId,
    this.image,
    this.description,
  });

  factory Memory.fromJson(Map<String, dynamic> json) => Memory(
        id: json["id"],
        userId: json["user_id"],
        image: json["image"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "image": image,
        "description": description,
      };
}
