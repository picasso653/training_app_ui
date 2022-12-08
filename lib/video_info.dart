import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:training_app_ui/colors.dart';

class VideoInfo extends StatefulWidget {
  const VideoInfo({super.key});

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColor.gradientFirst.withOpacity(0.8),
             AppColor.gradientSecond.withOpacity(0.7)],
             begin: const FractionalOffset(0, 0.4),
             end: Alignment.topRight
             )
        ),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back_ios, size: 20,
                      color: AppColor.secondPageIconColor,),
                      Icon(Icons.info_outline, size: 20,
                      color: AppColor.secondPageIconColor,)
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
                            width: 90,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [AppColor.secondPageContainerGradient1stColor,
                                AppColor.secondPageContainerGradient2ndColor
                                ])
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.timer_outlined, size: 20,
                                color: AppColor.secondPageIconColor,),
                                const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '60 mins',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: AppColor.homePageContainerTextSmall),
                              )
                              ],
                            ),
                          ),
                          const SizedBox(width: 20,),
                          Container(
                            width: 250,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [AppColor.secondPageContainerGradient1stColor,
                                AppColor.secondPageContainerGradient2ndColor
                                ])
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.handyman_outlined, size: 20,
                                color: AppColor.secondPageIconColor,),
                                const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Resistent band, kettelbell',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: AppColor.homePageContainerTextSmall),
                              )
                              ],
                            ),
                          )
                        ],
                      )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}