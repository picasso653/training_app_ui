import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'colors.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: 
        Column(
          children:  [
            Row(
              children: [
                Text('Training',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: AppColor.homePageTitle),
            ),
            Expanded(child: Container()),
            Icon(Icons.arrow_back_ios, size: 20, color: AppColor.homePageIcons,),
            const SizedBox(width: 10,),
            Icon(Icons.calendar_today_outlined, size: 20 , color: AppColor.homePageIcons),
            const SizedBox(width: 10,),
            Icon(Icons.arrow_forward_ios, size: 20, color: AppColor.homePageIcons,)
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                Text('Your Training',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColor.homePageSubtitle),
            ),
            Expanded(child: Container()),
            Text('Details',
            style: TextStyle(fontSize: 20, color: AppColor.homePageDetail),
            ),
            const SizedBox(width: 5,),
            Icon(Icons.arrow_forward, size: 20, color: AppColor.homePageIcons,)
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(80),
                ),
                gradient: LinearGradient(colors: [
                  AppColor.gradientFirst.withOpacity(0.8),
                  AppColor.gradientSecond.withOpacity(0.9),],
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight
                ),
                boxShadow: [BoxShadow(
                  offset: const Offset(10, 10),
                  blurRadius: 20,
                  color: AppColor.gradientSecond.withOpacity(0.3)
                )]
              ),
              child: Container(
                padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Next workout', 
                  style: TextStyle(fontSize: 16, color: AppColor.homePageContainerTextSmall),
                  ),
                  const SizedBox(height: 5,),
                  Text('Legs Toning',
                  style: TextStyle(fontSize: 25, color: AppColor.homePageContainerTextSmall),
                  ),
                  const SizedBox(height: 5,),
                  Text('and Glutes Workout',
                  style: TextStyle(fontSize: 25, color: AppColor.homePageContainerTextSmall),),
                  const SizedBox(height: 25,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.timer_outlined, size: 20, color: AppColor.homePageContainerTextSmall,),
                          const SizedBox(width: 5,),
                          Text('60 mins', 
                          style: TextStyle(fontSize: 18, color: AppColor.homePageContainerTextSmall),
                          )
                        ],
                      ),
                      Expanded(child: Container()),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          boxShadow: [BoxShadow(
                            color: AppColor.gradientFirst,
                            blurRadius: 10,
                            offset: const Offset(4, 8)
                          )]
                        ),
                        child: const Icon(Icons.play_circle_fill, size: 60, color: Colors.white,),
                      )
                    ],
                  )
                ],)
              ),
            )
          ],
        ),
      ),
    );
  }
}