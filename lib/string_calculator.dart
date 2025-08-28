class StringCalculator {
  static int add(String numbers) {
    if (numbers.isEmpty) return 0;

    var nums = numbers;
    String delimPattern = ',|\n';

    if (nums.startsWith('//')) {
      final match = RegExp(r'^//(.+)\n').firstMatch(nums);
      if (match != null) {
        final delim = match.group(1)!;
        // set pattern to the custom delimiter (escape for RegExp)
        delimPattern = RegExp.escape(delim);
        nums = nums.substring(match.end);
      }
    }

    final parts = nums.split(RegExp(delimPattern)).where((s) => s.isNotEmpty).toList();
    final ints = parts.map(int.parse).toList();

    final negatives = ints.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw ArgumentError('negatives not allowed: ${negatives.join(', ')}');
    }

    return ints.fold(0, (sum, n) => sum + n);
  }
}