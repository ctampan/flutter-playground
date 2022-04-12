import 'package:beepy/views/providers/cars_provider.dart';
import 'package:beepy/views/widgets/starred.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/app_bar.dart';

class CarDetailPage extends ConsumerStatefulWidget {
  const CarDetailPage({Key? key, required this.title}) : super(key: key);

  static const routeName = '/carDetail';
  final String title;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CarDetailState();
}

class _CarDetailState extends ConsumerState<CarDetailPage> {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final car = ModalRoute.of(context)!.settings.arguments as CarDetail;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBarWidget(context, widget.title),
      backgroundColor: theme.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Image.asset(car.imagePath, width: MediaQuery.of(context).size.width * 0.9,)),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.42,
                child: Container(
                  decoration: BoxDecoration(
                      color: car.color,
                      borderRadius: const BorderRadius.only(
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
                                    car.name,
                                    style: theme.textTheme.headline3
                                        ?.copyWith(color: Colors.white),
                                  ),
                                  Text(
                                    "\$" + car.price.toString() + "/day",
                                    style: theme.textTheme.subtitle1
                                        ?.copyWith(color: Colors.white),
                                  )
                                ],
                              ),
                              starredWidget(
                                  onTap: () {
                                    car.toggleStar();
                                    setState(() {});
                                  },
                                  isStarred: car.isStarred)
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Description",
                            style: theme.textTheme.headline6
                                ?.copyWith(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Wanna ride the coolest " +
                                car.name.toLowerCase() +
                                " in the world?",
                            style: theme.textTheme.bodyText1
                                ?.copyWith(fontSize: 15, color: Colors.white),
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
                                  style: theme.textTheme.button
                                      ?.copyWith(color: Colors.black),
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
