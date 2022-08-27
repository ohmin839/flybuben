import 'package:flybuben_lib/api.dart';

void main() {
  var converted = toAybuben('Barev Dzez, Barev dzez:');
  print(converted);

  var words = toHayerenWords(converted);
  print(words);

  var wordSet = toHayerenWordSet(converted);
  print(wordSet);

  var wordDict = toHayerenWordDict(converted);
  print(wordDict);
}
