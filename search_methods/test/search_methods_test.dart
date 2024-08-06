import 'package:flutter_test/flutter_test.dart';
import 'package:search_methods/search_methods.dart';

void main() {
  test('Linear Search Test', () {
    expect(SearchAlgorithms.linearSearch([1, 2, 3, 4, 5], 3), 2);
    expect(SearchAlgorithms.linearSearch([1, 2, 3, 4, 5], 6), -1);
  });

  test('Binary Search Test', () {
    expect(SearchAlgorithms.binarySearch([1, 2, 3, 4, 5], 3), 2);
    expect(SearchAlgorithms.binarySearch([1, 2, 3, 4, 5], 6), -1);
  });

  test('Jump Search Test', () {
    expect(SearchAlgorithms.jumpSearch([1, 2, 3, 4, 5], 3), 2);
    expect(SearchAlgorithms.jumpSearch([1, 2, 3, 4, 5], 6), -1);
  });
}