import 'package:ecoharmony/components/models/model.dart';

class NewslistModel {
  List<NewsModel>? newsList;

  NewslistModel({required this.newsList});

  factory NewslistModel.fromJson(Map<String, dynamic> json) => NewslistModel(
        newsList: json["discover"] == null ? [] : List<NewsModel>.from(json["discover"]!.map((x) => NewsModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "discover": newsList == null ? [] : List<dynamic>.from(newsList!.map((x) => x.toJson())),
      };
}