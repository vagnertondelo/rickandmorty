import 'package:flutter/material.dart';

Widget ImageHero (String image, double size){

  return SizedBox(
    width: size,
    child: Hero(
      tag: image,
      child: ClipOval(
      child:
      Image.network(
        image,
        width: size,
        height: size,
        fit: BoxFit.fill,
      )),
    ),
  );
}
