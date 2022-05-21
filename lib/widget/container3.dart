
import 'package:flutter/material.dart';

MyContainer3(
  Color color1,
  Color color2, 
  String? images,
  String? name1,
  String? name2,
  String? name3,
) {
  return Container(
    height: 160,
    width: 118,
    margin: const EdgeInsets.only(right: 14),
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
            name1!,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
          ),
          Text(
            name2!,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
          ),
          Text(
            name3!,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
          )
        ],
      ),
    ),
  );
}
