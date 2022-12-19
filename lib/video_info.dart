import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:training_app_ui/colors.dart';
import 'package:training_app_ui/home_page.dart';

class VideoInfo extends StatefulWidget {
  const VideoInfo({super.key});

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  List info = [];
  _initData() {
    DefaultAssetBundle.of(context).loadString('json/videoinfo.json').then((value) {
      info = json.decode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            AppColor.gradientFirst.withOpacity(0.8),
            AppColor.gradientSecond.withOpacity(0.9)
          ],
          begin: const FractionalOffset(0.0, 0.4),
          end: Alignment.topRight,
          )
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 70, left: 30, right: 20),
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell( 
                        onTap: () {
                    Get.back();
                  },
                        child: Icon(Icons.arrow_back_ios, 
                        size: 20, 
                        color: AppColor.secondPageIconColor,)),
                      Expanded(child: Container()),
                      Icon(Icons.info_outline, size: 20, color: AppColor.secondPageIconColor,)
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Text(
                        'Legs Toning',
                        style: TextStyle(
                            fontSize: 25,
                            color: AppColor.secondPageTitleColor),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'and Glutes Workout',
                        style: TextStyle(
                            fontSize: 25,
                            color: AppColor.secondPageTitleColor),
                      ),
                      const SizedBox(height: 50,),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                AppColor.secondPageContainerGradient1stColor,
                                AppColor.secondPageContainerGradient2ndColor
                              ])
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.timer_outlined, size: 20, color: AppColor.secondPageIconColor,),
                                const SizedBox(width: 5,),
                                Text("68 mins", style: TextStyle(
                                  fontSize: 16,
                                  color: AppColor.secondPageIconColor
                                ),)
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Container(
                            height: 30,
                            width: 210,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                AppColor.secondPageContainerGradient1stColor,
                                AppColor.secondPageContainerGradient2ndColor
                              ])
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.handyman_outlined, size: 20, color: AppColor.secondPageIconColor,),
                                const SizedBox(width: 5,),
                                Text("resistant band kettlebend", style: TextStyle(
                                  fontSize: 16,
                                  color: AppColor.secondPageIconColor
                                ),)
                              ],
                            ),
                          )
                        ],
                      )
                ],
              ),
            ),
            Expanded(child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(70))
              ),
              child: Column(
                children: [
                  const SizedBox(height: 30,),
                  Row(
                    children: [
                      const SizedBox(width: 30,),
                      Text("Circuit 1: Legs Toning",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColor.circuitsColor
                      ),
                      ),
                      Expanded(child: Container()),
                      Icon(Icons.loop, size: 30, color: AppColor.loopColor,),
                      const SizedBox(width: 10,),
                      Text("3 sets", 
                      style: TextStyle(fontSize: 15,
                      color: AppColor.setsColor
                      ),),
                      const SizedBox(width: 20,)
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),);
  }
}