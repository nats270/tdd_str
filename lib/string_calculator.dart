class StringCalculator {
  static int add(String numbers) {
    if (numbers.isEmpty) return 0;
    final n = int.tryParse(numbers);
    if (n != null) return n;
    throw UnimplementedError();
  }
}