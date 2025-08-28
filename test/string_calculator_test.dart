import 'package:flutter_test/flutter_test.dart';
import 'package:str_cal/string_calculator.dart';

void main() {
  test('empty string returns 0', () {
    expect(StringCalculator.add(''), equals(0));
  });
}