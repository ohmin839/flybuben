import 'package:flybuben_lib/api.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests for toAybuben function', () {

    void testToAybuben(String input, String expected) {
      test("$input -> $expected", () {
        expect(toAybuben(input), expected);
      });
    }

    testToAybuben('', '');
    testToAybuben('A', 'Ա');
    testToAybuben('B', 'Բ');
    testToAybuben('あ', 'あ');
  });
}
