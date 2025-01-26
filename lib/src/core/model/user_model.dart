// To parse this JSON data, do
//
//     final userDetails = userDetailsFromJson(jsonString);

import 'dart:convert';

UserDetails userDetailsFromJson(String str) => UserDetails.fromJson(json.decode(str));

String userDetailsToJson(UserDetails data) => json.encode(data.toJson());

class UserDetails {
  List<UserDatum>? userData;
  List<CommentList>? commentList;

  UserDetails({
    this.userData,
    this.commentList,
  });

  factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
    userData: json["user_data"] == null ? [] : List<UserDatum>.from(json["user_data"]!.map((x) => UserDatum.fromJson(x))),
    commentList: json["comment_list"] == null ? [] : List<CommentList>.from(json["comment_list"]!.map((x) => CommentList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "user_data": userData == null ? [] : List<dynamic>.from(userData!.map((x) => x.toJson())),
    "comment_list": commentList == null ? [] : List<dynamic>.from(commentList!.map((x) => x.toJson())),
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
  int? id;  // Add the ID field
  String? username;
  String? profileImage;
  String? address;
  String ? sscBatch;
  String ? phoneNumber;
  String ? designation;
  List<Memory>? memories;

  UserDatum({
    this.id,  // Include id in the constructor
    this.username,
    this.profileImage,
    this.address,
    this.sscBatch,
    this.phoneNumber,
    this.designation,
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
    memories: json["memories"] == null ? [] : List<Memory>.from(json["memories"]!.map((x) => Memory.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,  // Include id when converting to JSON
    "username": username,
    "ssc_batch": sscBatch,
    "phone_number": phoneNumber,
    "profile_image": profileImage,
    "address": address,
    "memories": memories == null ? [] : List<dynamic>.from(memories!.map((x) => x.toJson())),
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
