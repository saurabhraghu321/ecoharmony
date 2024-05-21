import 'dart:convert';
import 'package:ecoharmony/components/models/model.dart';
import 'package:ecoharmony/components/top_stories/topstories_data.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DiscoverController extends GetxController {
  NewslistModel? newsModel;
  List<NewsModel> discover = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/newslist.json');
    final data = await json.decode(response);
    newsModel = NewslistModel.fromJson(data);
    discover = newsModel?.newsList ?? [];
    update();
  }
}