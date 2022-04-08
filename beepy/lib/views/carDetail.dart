import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[
          CircleAvatar(
            backgroundColor: const Color(0xFF2A3640),
            child: Image.asset("assets/images/Beep_Beep_Avatar.png"),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(bottom: 70),
                child:
                    Image.asset("assets/images/Beep_Beep_Medium_Vehicle.png")),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.37,
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
                                children: const <Widget>[
                                  Text(
                                    "Sport Car",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 39,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  Text(
                                    "\$55/day",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w400),
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
                                          color: const Color(0xFFFFD644),
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
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Description",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Wanna ride the coolest sport car in the world?",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  primary: Colors.white,
                                  onPrimary: Colors.black,
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Book Now',
                                  style: TextStyle(fontSize: 15),
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
