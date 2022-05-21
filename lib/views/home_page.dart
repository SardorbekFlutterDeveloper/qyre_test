import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qyre_test/core/constants/color_constats.dart';
import 'package:qyre_test/widget/container.dart';
import 'package:qyre_test/widget/container2.dart';
import 'package:qyre_test/widget/container3.dart';
import 'package:sliver_bar_chart/sliver_bar_chart.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  static const kExpandedHeight = 200.0;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              "My Availability",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            pinned: true,
            floating: true,
            expandedHeight: 20,
          ),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: MyContainer2(
                              "Complete your profile tooptimize your exposure in job searches.",
                              130,
                              300,
                            ),
                          ),
                          MyContainer2(
                            "Complete your profile tooptimize your exposure in job searches.",
                            130,
                            300,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 358,
                      height: 44,
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Today’s productions",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MyContainer(
                      "image1.png",
                      10,
                      "Production Name That is Long",
                    ),
                    MyContainer(
                      "image2.png",
                      10,
                      "What has bee seen very very",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          MyContainer3(
                            ColorConst.contaBackColor1,
                            ColorConst.contaBackColor12,
                            "Vector.png",
                            "My network",
                            "Connected and grow",
                            "your network",
                          ),
                          MyContainer3(
                            ColorConst.contaBackColor2,
                            ColorConst.contaBackColor21,
                            "Vector2.png",
                            "Quick hire",
                            "Hire someone",
                            "quickly today",
                          ),
                          MyContainer3(
                            ColorConst.contaBackColor3,
                            ColorConst.contaBackColor31,
                            "Sub.png",
                            "Keep your CV",
                            "updated to get",
                            "the best offers",
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container MyContainer(
    String images,
    double width,
    String name,
  ) {
    return Container(
      height: 80,
      width: 400,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: ColorConst.contbackColor,
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 75,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/$images",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 200,
                          child: Text(
                            name,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const Text(
                          "Sweden Jan 14, 2022 - Feb 23, 2023 ",
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 18,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
