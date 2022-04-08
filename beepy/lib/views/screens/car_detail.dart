import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';

class CarDetailPage extends StatefulWidget {
  const CarDetailPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _CarDetailState();
}

class _CarDetailState extends State<CarDetailPage> {
  bool _isStarred = false;

  void _toggleStarred() {
    setState(() {
      _isStarred = !_isStarred;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBarWidget(context, widget.title),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child:
                    Image.asset("assets/images/Beep_Beep_Medium_Vehicle.png")),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.42,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Sport Car",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                  ),
                                  Text(
                                    "\$55/day",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                  )
                                ],
                              ),
                              InkWell(
                                  onTap: () {
                                    _toggleStarred();
                                  },
                                  child: Stack(
                                    children: <Widget>[
                                      if (_isStarred)
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
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Description",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Wanna ride the coolest sport car in the world?",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                          ),
                          const Spacer(),
                          SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 57,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  primary: Colors.white,
                                  onPrimary: Colors.black,
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Book Now',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                ),
                              ))
                        ],
                      )),
                  alignment: Alignment.center,
                ))
          ],
        ),
      ),
    );
  }
}
