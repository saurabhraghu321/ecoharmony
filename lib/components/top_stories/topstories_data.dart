import 'package:ecoharmony/components/models/model.dart';

class NewslistModel {
  List<NewsModel>? newsList;

  NewslistModel({required this.newsList});

  factory NewslistModel.fromJson(Map<String, dynamic> json) => NewslistModel(
        newsList: json["top_stories"] == null ? [] : List<NewsModel>.from(json["top_stories"]!.map((x) => NewsModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "top_stories": newsList == null ? [] : List<dynamic>.from(newsList!.map((x) => x.toJson())),
      };
}