import 'package:flutter_modelviews/value_objects/value_object.dart';

class HeightVO extends ValueObject {
  HeightVO(super.value);

  @override
  String? validate() {
    if ((double.tryParse(value) ?? 0) <= 0) {
      return 'Altura nao pode ser menor que zero';
    }
    return null;
  }
}
