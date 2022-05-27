import 'package:flutter/material.dart';

import 'package:qyre_test/core/constants/color_constats.dart';

import 'package:qyre_test/widget/container2.dart';
import 'package:qyre_test/widget/container3.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
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
          const SliverAppBar(
            pinned: true,
            // floating: false,

            elevation: 0,
            title: Text(
              "My Availability",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.white,
          ),
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            expandedHeight: 108,
            toolbarHeight: 60,
            pinned: true,
            flexibleSpace: Stack(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      mycalendar(
                        monday: "MON",
                        month: "Oct",
                        day: "18",
                        gheight: 108,
                        mycolor: Colors.red,
                        name: "Today",
                      ),
                      mycalendar(
                          monday: "TUE",
                          month: "Oct",
                          day: "19",
                          gheight: 95,
                          mycolor: Colors.green),
                      mycalendar(
                          monday: "WED", month: "Oct", day: "20", gheight: 80),
                      mycalendar(
                          monday: "THU",
                          month: "Oct",
                          day: "21",
                          gheight: 95,
                          mycolor: Colors.red),
                      mycalendar(
                        monday: "FRI",
                        month: "Oct",
                        day: "22",
                        gheight: 108,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            childCount: 1,
            (context, index) {
              return Padding(
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
                      nameSingle("Today's productions"),
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
                      nameSingle("My Job offers"),
                      jobcontainer(),
                      jobcontainer(),
                      nameSingle("Starred posts"),
                      Container(
                        height: 130,
                        width: 400,
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ColorConst.contbackColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Qyre Us Production",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "1 day ago",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Updated  Priviligies for current ",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.list_outlined,
                                      color: Colors.blue,
                                    ),
                                    Icon(
                                      Icons.photo_size_select_actual_rounded,
                                      color: Colors.blue,
                                    ),
                                    Icon(
                                      Icons.push_pin,
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                               
                              ],
                            ),
                             Container(
                                  child: Text(
                                    "I changed your admin roles to posters. With that you can't send out offers. Just use the communication tool to get all the features!",
                                    style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  ),
                                ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )),
        ],
      ),
    );
  }

  Container jobcontainer() {
    return Container(
      height: 100,
      width: 400,
      margin: const EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: ColorConst.contbackColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Boom Operator",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "June 12, 2021",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              "Masterchef",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Jan 14, 2022 - Feb 23, 2022 ",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "3 days",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container jobcontaine2() {
    return Container(
      height: 100,
      width: 400,
      margin: const EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: ColorConst.contbackColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Boom Operator",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "June 12, 2021",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              "Masterchef",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Jan 14, 2022 - Feb 23, 2022 ",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "3 days",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container nameSingle(String name) {
    return Container(
      width: 358,
      height: 44,
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "My Job offers",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Container mycalendar({
    String? monday = "",
    String? month = "",
    String? day = "",
    double? gheight = 105,
    Color? mycolor = Colors.black,
    String? name = "",
  }) {
    return Container(
      height: gheight,
      width: 65,
      constraints: BoxConstraints(
        minHeight: 30,
        minWidth: 80,
      ),
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        color: Colors.black,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            name!,
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w500),
          ),
          Text(
            monday!,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500),
          ),
          Text(
            day!,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500),
          ),
          CircleAvatar(
            backgroundColor: mycolor,
            radius: 7.0,
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
