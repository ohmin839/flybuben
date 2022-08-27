import 'dart:convert';
import 'dart:io';
import 'package:flybuben_core/api.dart' as flybuben;

void main(List<String> arguments) {
  var wordSet = <String>{};
  stdin
    .transform(utf8.decoder)
    .transform(const LineSplitter())
    .listen(
      (String line) {
        wordSet.addAll(flybuben.toHayerenWordSet(line));
      },
      onDone: () {
        wordSet.forEach(
          (word) {
            print(word);
          }
        );
      }
    );
}