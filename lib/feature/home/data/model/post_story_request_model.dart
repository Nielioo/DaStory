part of '../datas.dart';

class PostStoryRequestModel {
  String? description;
  List<int>? photo;
  double? lat;
  double? lon;

  PostStoryRequestModel({
    this.description,
    this.photo,
    this.lat,
    this.lon,
  });
}