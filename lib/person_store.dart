import 'package:flutter/cupertino.dart';
import 'package:flutter_modelviews/value_objects/height_vo.dart';
import 'package:flutter_modelviews/value_objects/weight_vo.dart';

class PersonStore extends ChangeNotifier {
  String result = '';
  String heightResult = '';
  String weightResult = '';

  // String? validatePerson(HeightVO height, WeightVO weight) {
  //   final model = PersonModel(weight: weight, height: height);
  //   var heightValidationString = HeightVO(height).validate();
  //   var weightValidationString = WeightVO(weight).validate();
  //   heightResult = heightValidationString ?? '';
  //   weightResult = weightValidationString ?? '';
  //   notifyListeners();
  //   return string;
  // }

  String? validatePersonHeight(String? height) {
    var heightValidationString = HeightVO(height).validate();
    heightResult = heightValidationString ?? '';
    notifyListeners();
    return heightResult;
  }

  String? validatePersonWeight(String? weight) {
    var weightValidationString = WeightVO(weight).validate();
    weightResult = weightValidationString ?? '';
    notifyListeners();
    return weightResult;
  }

  // double returnImc(double height, double weight) {
  //   final model = PersonModel(height, weight).calcBMI();
  //   return model;
  // }
}
