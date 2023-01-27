import 'package:flutter_modelviews/value_objects/value_object.dart';

class WeightVO extends ValueObject {
  WeightVO(super.value);

  @override
  String? validate() {
    if ((double.tryParse(value) ?? 0) <= 0) {
      return 'Peso nao pode ser menor que zero';
    }
    return null;
  }
}
