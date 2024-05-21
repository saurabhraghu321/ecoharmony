import 'package:ecoharmony/components/politics/politics.dart';
import 'package:ecoharmony/components/sports/sports.dart';
import 'package:ecoharmony/components/top_stories/topstories.dart';
import 'package:ecoharmony/viewpage/pageview_controller.dart';

import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final MyHomePageController controller = Get.put(MyHomePageController());
  @override
  void initState() {
    super.initState();
    Get.find<MyHomePageController>().readJson();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyHomePageController>(builder: (controller) {
      return Scaffold(
        backgroundColor: Color.fromARGB(249, 72, 66, 66),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: Container(child: Text("politics")),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Politics()));
                },
              ),
              InkWell(
                child: Container(child: Text('Top Stories')),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TopStories()));
                },
              ),
              InkWell(
                child: Container(child: Text('Cricket')),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Sports()));
                },
              ),
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 76, 150, 175),
        ),
        body: Swiper(
          itemCount: controller.myhomepage.length,
          layout: SwiperLayout.STACK,
          scrollDirection: Axis.vertical,
          itemWidth: MediaQuery.of(context).size.width,
          itemHeight: MediaQuery.of(context).size.height,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: const BoxDecoration(color: Color.fromARGB(255, 254, 254, 254)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Image.network(controller.myhomepage[index].imageuRL, fit: BoxFit.cover, height: 300, width: 450),
                      ),
                      Positioned(
                        left: 10,
                        bottom: 0,
                        child: Card(
                          child: Container(
                            width: 70,
                            decoration: BoxDecoration(color: const Color.fromARGB(255, 246, 246, 244), borderRadius: BorderRadius.circular(25)),
                            child: const Center(
                              child: Text(
                                'inShorts',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Text(
                      maxLines: 2,
                      controller.myhomepage[index].heading,
                      textAlign: TextAlign.left,
                      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Text(controller.myhomepage[index].description, style: const TextStyle(fontSize: 18)),
                  ),
                ],
              ),
            );
          },
        ),
      );
    });
  }
}
