import 'package:flutter/material.dart';

void navigateTo(context, widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

Widget categoryWidget(String text, Color color) => Expanded(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: color),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 17),
          ),
        ),
      ),
    );

Widget podcastWidget(
        {String? img,
        String? text1,
        String? text2,
        Color? color,
        Icon? icon}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(img!),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1!,
                  style: const TextStyle(fontSize: 15),
                ),
                Text(
                  text2!,
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            )
          ],
        ),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: icon,
        ),
      ],
    );
