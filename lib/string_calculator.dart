class StringCalculator {
  static int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final cleaned = numbers.replaceAll('\n', ',');

    if (!cleaned.contains(',')) {
      final n = int.tryParse(cleaned);
      if (n != null) return n;
    }

    final parts = cleaned.split(',');
    return parts.map(int.parse).fold(0, (sum, n) => sum + n);
  }
}