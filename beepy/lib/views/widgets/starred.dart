import 'package:flutter/material.dart';

Widget starredWidget({required void Function() onTap, required bool isStarred}) {
  return InkWell(
      onTap: () {
        onTap();
      },
      child: Stack(
        children: <Widget>[
          if (isStarred)
            const Icon(
              Icons.star_rounded,
              color: Color(0xFFFFD644),
              size: 40,
            ),
          const Icon(
            Icons.star_border_rounded,
            color: Colors.white,
            size: 40,
          )
        ],
      ));
}
