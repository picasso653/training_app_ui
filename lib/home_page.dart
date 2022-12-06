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
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Training',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: AppColor.homePageTitle),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: AppColor.homePageIcons,
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(Icons.calendar_today_outlined,
                    size: 20, color: AppColor.homePageIcons),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: AppColor.homePageIcons,
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'Your Training',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColor.homePageSubtitle),
                ),
                Expanded(child: Container()),
                Text(
                  'Details',
                  style:
                      TextStyle(fontSize: 20, color: AppColor.homePageDetail),
                ),
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 20,
                  color: AppColor.homePageIcons,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(80),
                  ),
                  gradient: LinearGradient(colors: [
                    AppColor.gradientFirst.withOpacity(0.8),
                    AppColor.gradientSecond.withOpacity(0.9),
                  ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(10, 10),
                        blurRadius: 20,
                        color: AppColor.gradientSecond.withOpacity(0.3))
                  ]),
              child: Container(
                  padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Next workout',
                        style: TextStyle(
                            fontSize: 16,
                            color: AppColor.homePageContainerTextSmall),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Legs Toning',
                        style: TextStyle(
                            fontSize: 25,
                            color: AppColor.homePageContainerTextSmall),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'and Glutes Workout',
                        style: TextStyle(
                            fontSize: 25,
                            color: AppColor.homePageContainerTextSmall),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.timer_outlined,
                                size: 20,
                                color: AppColor.homePageContainerTextSmall,
                              ),
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
                          Expanded(child: Container()),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColor.gradientFirst,
                                      blurRadius: 10,
                                      offset: const Offset(4, 8))
                                ]),
                            child: const Icon(
                              Icons.play_circle_fill,
                              size: 60,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  )),
            ),
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 35),
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage('assets/card.jpg'),
                            fit: BoxFit.fill),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 40,
                              offset: const Offset(8, 10),
                              color: AppColor.gradientSecond.withOpacity(0.3)),
                          BoxShadow(
                              blurRadius: 10,
                              offset: const Offset(-1, -5),
                              color: AppColor.gradientSecond.withOpacity(0.3))
                        ]),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 200, bottom: 30),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/figure.png'),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50, left: 150),
                    width: double.maxFinite,
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You are doing great',
                          style: TextStyle(
                              fontSize: 18,
                              color: AppColor.homePageDetail,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text('Keep it up',
                            style: TextStyle(
                                fontSize: 16,
                                color: AppColor.homePagePlanColor)),
                        Text('Stick to your plan.',
                            style: TextStyle(
                                fontSize: 16,
                                color: AppColor.homePagePlanColor))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "Area of focus",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: AppColor.homePageTitle),
                )
              ],
            ),
            Expanded(child: ListView.builder(
              itemCount: 4,
              itemBuilder: ((context, index) {
              return Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 5),
                    height: 170,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      image: const DecorationImage(image: AssetImage('assets/ex1.png')),
                      boxShadow: [BoxShadow(
                        blurRadius: 3,
                        offset: const Offset(5, 5),
                        color: AppColor.gradientSecond.withOpacity(0.1)
                      ),
                      BoxShadow(
                        blurRadius: 3,
                        offset: const Offset(-5, -5),
                        color: AppColor.gradientSecond.withOpacity(0.1)
                      )
                      ]
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text('Glutes', style: 
                      TextStyle(
                        color: AppColor.homePageDetail, fontSize: 18
                      )
                      ,),
                    ),
                  )
                ],
              );
            })))
          ],
        ),
      ),
    );
  }
}
