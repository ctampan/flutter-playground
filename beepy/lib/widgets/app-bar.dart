import 'package:flutter/material.dart';

AppBar appBarWidget(BuildContext context, String title) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Text(
      title,
      style: Theme.of(context)
          .textTheme
          .titleLarge
          ?.copyWith(fontWeight: FontWeight.w600),
    ),
    centerTitle: true,
    foregroundColor: Colors.black,
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    leading: Navigator.canPop(context)
        ? IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop(),
          )
        : null,
    actions: <Widget>[
      if (Navigator.canPop(context))
        CircleAvatar(
          backgroundColor: const Color(0xFF2A3640),
          child: Image.asset("assets/images/Beep_Beep_Avatar.png"),
        )
    ],
  );
}
