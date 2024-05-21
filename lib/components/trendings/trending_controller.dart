import 'dart:convert';
import 'package:ecoharmony/components/models/model.dart';
import 'package:ecoharmony/components/top_stories/topstories_data.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class TreandingController extends GetxController {
  NewslistModel? newsModel;
  List<NewsModel> trendings = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/newslist.json');
    final data = await json.decode(response);
    newsModel = NewslistModel.fromJson(data);
    trendings = newsModel?.newsList ?? [];
    update();
  }
}
