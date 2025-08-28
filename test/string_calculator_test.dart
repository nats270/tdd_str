import 'package:flutter_test/flutter_test.dart';
import 'package:str_cal/string_calculator.dart';

void main() {
  test('empty string returns 0', () {
    expect(StringCalculator.add(''), equals(0));
  });

  test('single number returns its value', () {
    expect(StringCalculator.add('7'), equals(7));
    expect(StringCalculator.add('42'), equals(42));
  });

  test('two numbers comma-separated', () {
    expect(StringCalculator.add('1,5'), equals(6));
  });

  test('multiple numbers', () {
    expect(StringCalculator.add('1,2,3,4'), equals(10));
  });

  test('handles newlines as delimiters', () {
    expect(StringCalculator.add('1\n2,3'), equals(6));
  });

  test('custom delimiter', () {
    expect(StringCalculator.add('//;\n1;2'), equals(3));
  });

}