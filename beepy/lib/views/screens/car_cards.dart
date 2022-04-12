import 'package:beepy/views/screens/car_detail.dart';
import 'package:beepy/views/widgets/app_bar.dart';
import 'package:beepy/views/widgets/starred.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/cars_provider.dart';

class CarCardsPage extends ConsumerStatefulWidget {
  const CarCardsPage({Key? key, required this.title}) : super(key: key);

  static const routeName = '/carCards';
  final String title;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CarCardsState();
}

class _CarCardsState extends ConsumerState<CarCardsPage> {
  @override
  Widget build(BuildContext context) {
    List<CarDetail> cars = ref.read(carList);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: appBarWidget(context, widget.title),
      backgroundColor: theme.backgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (final car in cars)
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, CarDetailPage.routeName,
                              arguments: car)
                          .then((value) => {setState(() {})});
                    },
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        SizedBox(
                            height: 145,
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: car.color,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        car.name,
                                        style: theme.textTheme.headline4
                                            ?.copyWith(color: Colors.white),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        "\$" + car.price.toString() + "/day",
                                        style: theme.textTheme.subtitle1
                                            ?.copyWith(color: Colors.white),
                                      ),
                                      const Spacer(),
                                      starredWidget(
                                          onTap: () {
                                            car.toggleStar();
                                            setState(() {});
                                          },
                                          isStarred: car.isStarred)
                                    ],
                                  )),
                            )),
                        Positioned(
                          bottom: -25,
                          right: 10,
                          child: Image.asset(
                            car.imagePath,
                            width: 150,
                          ),
                        )
                      ],
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
