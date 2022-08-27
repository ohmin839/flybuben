import 'package:flybuben_lib/api.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests for toAybuben function', () {

    void testToAybuben(String input, String expected) {
      test("$input -> $expected", () {
        expect(toAybuben(input), expected);
      });
    }

    // upper cases
    testToAybuben('', '');
    testToAybuben('A', 'Ա');
    testToAybuben('B', 'Բ');
    testToAybuben('G', 'Գ');
    testToAybuben('D', 'Դ');
    testToAybuben('E', 'Ե');
    testToAybuben('Z', 'Զ');
    testToAybuben("E'", 'Է');
    testToAybuben("Y'", 'Ը');
    testToAybuben("T'", 'Թ');
    testToAybuben('Zh', 'Ժ');
    testToAybuben('I', 'Ի');
    testToAybuben('L', 'Լ');
    testToAybuben('X', 'Խ');
    testToAybuben("C'", 'Ծ');
    testToAybuben('K', 'Կ');
    testToAybuben('H', 'Հ');
    testToAybuben('Dz', 'Ձ');
    testToAybuben('Gh', 'Ղ');
    testToAybuben('Tw', 'Ճ');
    testToAybuben('M', 'Մ');
    testToAybuben('Y', 'Յ');
    testToAybuben('N', 'Ն');
    testToAybuben('Sh', 'Շ');
    testToAybuben('Vo', 'Ո');
    testToAybuben('Ch', 'Չ');
    testToAybuben('P', 'Պ');
    testToAybuben('J', 'Ջ');
    testToAybuben('Rr', 'Ռ');
    testToAybuben('S', 'Ս');
    testToAybuben('V', 'Վ');
    testToAybuben('T', 'Տ');
    testToAybuben('R', 'Ր');
    testToAybuben('C', 'Ց');
    testToAybuben('W', 'Ւ');
    testToAybuben("P'", 'Փ');
    testToAybuben('Q', 'Ք');
    testToAybuben('O', 'Օ');
    testToAybuben('F', 'Ֆ');
    testToAybuben('U', 'Ու');
    // lower cases
    testToAybuben('a', 'ա');
    testToAybuben('b', 'բ');
    testToAybuben('g', 'գ');
    testToAybuben('d', 'դ');
    testToAybuben('e', 'ե');
    testToAybuben('z', 'զ');
    testToAybuben("e'", 'է');
    testToAybuben("y'", 'ը');
    testToAybuben("t'", 'թ');
    testToAybuben('zh', 'ժ');
    testToAybuben('i', 'ի');
    testToAybuben('l', 'լ');
    testToAybuben('x', 'խ');
    testToAybuben("c'", 'ծ');
    testToAybuben('k', 'կ');
    testToAybuben('h', 'հ');
    testToAybuben('dz', 'ձ');
    testToAybuben('gh', 'ղ');
    testToAybuben('tw', 'ճ');
    testToAybuben('m', 'մ');
    testToAybuben('y', 'յ');
    testToAybuben('n', 'ն');
    testToAybuben('sh', 'շ');
    testToAybuben('vo', 'ո');
    testToAybuben('ch', 'չ');
    testToAybuben('p', 'պ');
    testToAybuben('j', 'ջ');
    testToAybuben('rr', 'ռ');
    testToAybuben('s', 'ս');
    testToAybuben('v', 'վ');
    testToAybuben('t', 'տ');
    testToAybuben('r', 'ր');
    testToAybuben('c', 'ց');
    testToAybuben('w', 'ւ');
    testToAybuben("p'", 'փ');
    testToAybuben('q', 'ք');
    testToAybuben('o', 'օ');
    testToAybuben('f', 'ֆ');
    testToAybuben('u', 'ու');
    testToAybuben('ev', 'և');
    // others
    testToAybuben('\$', '֏');
    testToAybuben('1234567890', '1234567890');
    testToAybuben(',', ',');
    testToAybuben('.', '.');
    testToAybuben('`', '՝');
    testToAybuben(':', '։');
    testToAybuben('-', '-');
    testToAybuben('(', '(');
    testToAybuben(')', ')');
    testToAybuben('<<', '«');
    testToAybuben('>>', '»');
    testToAybuben('?', '՞');
    testToAybuben('!', '՛');
    testToAybuben('!~', '՜');
    testToAybuben(' ', ' ');
    testToAybuben('\t', '\t');
    testToAybuben('\n', '\n');
    testToAybuben('\r\n', '\r\n');
    testToAybuben('あ', 'あ');
  });

  group('A group of tests for toHayerenWords function', () {
    void testToHayerenWords(String input, List<String> expected) {
      test("$input -> $expected", () {
        expect(toHayerenWords(input), expected);
      });
    }

    testToHayerenWords('', []);
    testToHayerenWords('Բարև Ձեզ։', ['Բարև', 'Ձեզ']);
  });

  group('A group of tests for toHayerenWordSet function', () {
    void testToHayerenWordSet(String input, Set<String> expected) {
      test("$input -> $expected", () {
        expect(toHayerenWordSet(input), expected);
      });
    }

    testToHayerenWordSet('', <String>{});
    testToHayerenWordSet('Բարև Ձեզ։', {'Բարև', 'Ձեզ'});
    testToHayerenWordSet('Բարև Ձեզ, Բարև ձեզ։', {'Բարև', 'Ձեզ', 'ձեզ'});
  });

  group('A group of tests for toHayerenWordDict function', () {
    void testToHayerenWordDict(String input, Map<String, int> expected) {
      test("$input -> $expected", () {
        expect(toHayerenWordDict(input), expected);
      });
    }

    testToHayerenWordDict('', <String, int>{});
    testToHayerenWordDict('Բարև Ձեզ։', <String, int>{'Բարև': 1, 'Ձեզ': 1});
    testToHayerenWordDict('Բարև Ձեզ, Բարև ձեզ։', <String, int>{'Բարև': 2, 'Ձեզ': 1, 'ձեզ': 1});
  });

}
