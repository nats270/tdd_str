class StringCalculator {
  static int add(String numbers) {
    if (numbers.isEmpty) return 0;

    var nums = numbers;
    String delimPattern = ',|\n';

    if (nums.startsWith('//')) {
      final match = RegExp(r'^//(.+)\n').firstMatch(nums);
      if (match != null) {
        final delim = match.group(1)!;
        delimPattern = RegExp.escape(delim);
        nums = nums.substring(match.end);
      }
    }

    final parts = nums.split(RegExp(delimPattern));
    if (parts.length == 1) {
      final n = int.tryParse(parts.first);
      if (n != null) return n;
    }
    return parts.map(int.parse).fold(0, (sum, n) => sum + n);
  }
}