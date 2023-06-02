// To parse this JSON data, do
//
//     final restaurant = restaurantFromJson(jsonString);

import 'dart:convert';

CardClassDetail restaurantFromJson(String str) =>
   CardClassDetail.fromJson(json.decode(str));

String restaurantToJson(CardClassDetail data) => json.encode(data.toJson());

class CardClassDetail {
CardClassDetail({
    required this.data,
  });
/// change Datum to  RestaurantData
  List<CardClassDeatailData> data;

  factory CardClassDetail.fromJson(Map<String, dynamic> json) => CardClassDetail(
        data: List<CardClassDeatailData>.from(json["data"].map((x) => CardClassDeatailData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class CardClassDeatailData {
  CardClassDeatailData({
    required this.id,
    required this.attributes,
  });

  int id;
  CardClassDetailAttributes attributes;

  factory CardClassDeatailData.fromJson(Map<String, dynamic> json) => CardClassDeatailData(
        id: json["id"],
        attributes: CardClassDetailAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class CardClassDetailAttributes {
  CardClassDetailAttributes({
    required this.name,
    required this.category,
    required this.discount,
    required this.deliveryFee,
    required this.deliveryTime,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.picture,
  });

  String name;
  String category;
  int discount;
  double deliveryFee;
  int deliveryTime;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime publishedAt;
  Picture picture;

  factory CardClassDetailAttributes.fromJson(Map<String, dynamic> json) =>
      CardClassDetailAttributes(
        name: json["name"],
        category: json["category"],
        discount: json["discount"],
        deliveryFee: json["deliveryFee"]?.toDouble(),
        deliveryTime: json["deliveryTime"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        picture: Picture.fromJson(json["picture"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "category": category,
        "discount": discount,
        "deliveryFee": deliveryFee,
        "deliveryTime": deliveryTime,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
        "picture": picture.toJson(),
      };
}

class Picture {
  Picture({
    required this.data,
  });

  Data data;

  factory Picture.fromJson(Map<String, dynamic> json) => Picture(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  Data({
    required this.id,
    required this.attributes,
  });

  int id;
  PictureDataAttributes attributes;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        attributes: PictureDataAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class PictureDataAttributes {
  PictureDataAttributes({
    required this.url,
  });

  String url;

  factory PictureDataAttributes.fromJson(Map<String, dynamic> json) => PictureDataAttributes(
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
      };
}
