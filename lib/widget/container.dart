
import 'package:flutter/material.dart';
import 'package:qyre_test/core/constants/color_constats.dart';

MyContainer(
    String? images,
  double? width,
  String? name,

) {
  Container(
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
                        name!,
                      
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
