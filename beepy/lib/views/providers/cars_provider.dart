import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final carList = StateNotifierProvider<CarListState, List<CarDetail>>((ref) {
  return CarListState();
});

class CarListState extends StateNotifier<List<CarDetail>> {
  CarListState(): super(
      [
        CarDetail(name: 'Classic Car', price: 34, color: const Color(0xFFB67853), imagePath: 'assets/images/Beep_Beep_Classic_Car.png'),
        CarDetail(name: 'Sport Car', price: 55, color: const Color(0xFF60B5F4),imagePath: 'assets/images/Beep_Beep_Sport_Car.png'),
        CarDetail(name: 'Flying Car', price: 500, color: const Color(0xFF8382C2), imagePath: 'assets/images/Beep_Beep_Flying_Car.png'),
        CarDetail(name: 'Scooter', price: 15, color: const Color(0xFF2A3640), imagePath: 'assets/images/Beep_Beep_Scooter.png'),
        CarDetail(name: 'Caravan Car', price: 50, color: const Color(0xFFAC6040), imagePath: 'assets/images/Beep_Beep_Caravan_Car.png'),
        CarDetail(name: 'Horse', price: 20, color: const Color(0xFF8382C2), imagePath: 'assets/images/Beep_Beep_Horse.png'),
      ]
  );

  void toggleStar(int index) {
    state[index].toggleStar();
  }
}

class CarDetail {
  CarDetail({required this.name, required this.price, required this.imagePath, required this.color, this.isStarred = false});

  final String name;
  final int price;
  final String imagePath;
  final Color color;
  bool isStarred;

  void toggleStar() {
    isStarred = !isStarred;
  }
}
