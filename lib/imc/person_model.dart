import 'dart:math' as math;

import 'package:flutter_modelviews/value_objects/height_vo.dart';
import 'package:flutter_modelviews/value_objects/weight_vo.dart';

class PersonModel {
  late WeightVO weight;
  late HeightVO height;

  PersonModel({
    required this.weight,
    required this.height,
  });

  double calcBMI() {
    final result = weight.value / math.pow(height.value, 2);
    return result;
  }

  // String? validatePerson() {
  //   if (weight.value <= 0.0 && height.value <= 0.0) {
  //     return 'Seu peso e altura precisam ser maior que zero';
  //   }
  //   if (weight.value <= 0.0) {
  //     return 'Seu peso precisa ser maior que zero';
  //   }
  //   if (height.value <= 0.0) {
  //     return 'Sua altura precisa ser maior que zero';
  //   }
  //   return null;
  // }

  // String? validateWeight() {
  //   if (weight <= 0.0) {
  //     return 'Seu peso precisa ser maior que zero';
  //   }
  //   return null;
  // }

  // String? validateHeight() {
  //   if (height <= 0.0) {
  //     return 'Sua altura precisa ser maior que zero';
  //   }
  //   return null;
  // }
}
