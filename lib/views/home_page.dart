import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qyre_test/core/constants/color_constats.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              "My Availability",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            pinned: true,
            floating: true,
            expandedHeight: 154,
            flexibleSpace: Stack(
              children: [
                Positioned(
                  top: 80,
                  left: 0,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 18),
                        calendar(111, "TODAY", "Mon", "oct", "18"),
                        SizedBox(width: 12),
                        calendar(95, "TODAY", "The", "oct", "19"),
                        SizedBox(width: 12),
                        calendar(79, "TODAY", "Wed", "oct", "20"),
                        SizedBox(width: 12),
                        calendar(95, "TODAY", "Thu", "oct", "21"),
                        SizedBox(width: 12),
                        calendar(111, "TODAY", "Fri", "oct", "22"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
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
                            child: myContainer(
                              "Complete your profile tooptimize your exposure in job searches.",
                              height: 130,
                              width: 300,
                            ),
                          ),
                          myContainer(
                            "Complete your profile tooptimize your exposure in job searches.",
                            height: 130,
                            width: 300,
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
                    secondContainer(
                        "Production Name That is Long", "image1.png", 60),
                    secondContainer("What has bee seen very very long te.",
                        "image2.png", 9),
                        SizedBox(
                          height: 20,
                        ),
                    Row(
                      children: [
                        container3(
                          "Vector.png",
                          "My network",
                          "Connected and grow",
                          "your network",
                          ColorConst.contaBackColor1,
                          ColorConst.contaBackColor12,
                        ),
                        container3(
                          "Vector2.png",
                          "Quick hire",
                          "Hire someone",
                          "quickly today",
                          ColorConst.contaBackColor2,
                          ColorConst.contaBackColor21,
                        ),
                        container3(
                          "Sub.png",
                          "Keep your CV",
                          "updated to get",
                          "the best offers",
                          ColorConst.contaBackColor3,
                          ColorConst.contaBackColor31,
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
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        unselectedFontSize: 12,
        backgroundColor: Color(0xff111111),
        type: BottomNavigationBarType.shifting,

        // currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
       backgroundColor: Color(0xff111111),
            label: "",
            icon: Image.asset(
              "assets/images/home.png",
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xff111111),
              label: "",
              icon: Image.asset(
                "assets/images/teng.png",
                color: Colors.white,
              )),
          BottomNavigationBarItem(
            backgroundColor: Color(0xff111111),
              label: "",
              icon: Image.asset(
                "assets/images/not.png",
                color: Colors.white,
              )),
        ],
      ),
    );
  }

  Container calendar(
      double height, String today, String weekday, String month, String day) {
    return Container(
      height: height,
      width: 68,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: ColorConst.calendarBackColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            today,
            style:
                TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold),
          ),
          Text(
            weekday,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            month,
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          Text(
            day,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Container container3(String images, String name1, String name2, String name3,
      Color color1, Color color2) {
    return Container(
      height: 160,
      width: 118,
      margin: EdgeInsets.only(right: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/$images",
              fit: BoxFit.cover,
            ),
            Text(
              name1,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
            Text(
              name2,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
            Text(
              name3,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            )
          ],
        ),
      ),
    );
  }

  Container secondContainer(String name, String images, double width) {
    return Container(
      height: 71,
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
          Image.asset("assets/images/$images"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
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

  Container myContainer(
    String name, {
    double? height,
    double? width,
  }) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: ColorConst.contbackColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            Image.asset("assets/images/bar.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  "Complete profile",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 18,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
