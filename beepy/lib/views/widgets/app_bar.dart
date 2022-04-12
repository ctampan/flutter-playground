import 'package:flutter/material.dart';

AppBar appBarWidget(BuildContext context, String title) {
  final theme = Theme.of(context);
  return AppBar(
    automaticallyImplyLeading: false,
    title: Text(
      title,
      style: theme
          .textTheme
          .headline6,
    ),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    leading: Navigator.canPop(context)
        ? IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: theme.backgroundColor == Colors.white ? Colors.black : Colors.white,
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
