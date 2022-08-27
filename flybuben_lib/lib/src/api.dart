import 'package:petitparser/petitparser.dart';
import 'conversion.dart';
import 'collection.dart';

String toAybuben(String ascii) {
  final parser = ConversionParser();
  return parser.parse(ascii).value;
}

List<String> toHayerenWords(String text) {
  final parser = CollectionParser();
  return parser.matchesSkipping(text);
}

Set<String> toHayerenWordSet(String text) {
  var wordSet = <String>{};
  text.split(RegExp(r'\r?\n'))
    .forEach(
      (String line) {
        wordSet.addAll(toHayerenWords(line));
      }
    );
  return wordSet;
}

Map<String, int> toHayerenWordDict(String text) {
  var wordDict = <String, int>{};
  text.split(RegExp(r'\r?\n'))
    .forEach(
      (String line) {
        toHayerenWords(line).forEach(
          (String word) {
            wordDict[word] = (wordDict[word] ?? 0) + 1;
          }
        );
      }
    );
  return wordDict;
}
