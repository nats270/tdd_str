class StringCalculator {
  static int add(String numbers) {
    if (numbers.isEmpty) return 0;

    if (!numbers.contains(',')) {
      final n = int.tryParse(numbers);
      if (n != null) return n;
    }

    final parts = numbers.split(',');
    return parts.map(int.parse).reduce((a, b) => a + b);
  }
}