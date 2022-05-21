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
            floating: true,
          ),
          SliverBarChart(
            barWidget: BarChartWidget(
                minHeight: 79,
                maxHeight: 111,
                barValues: [BarChartData(x: "2020", y: 20)],
                isScrolling: false),
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
                    MyContainer( "image1.png",60, "Production Name That is Long",),

                    MyContainer("image2.png", 9, "What has bee seen very very long te.",),
                  
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
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
  
}
