import 'dart:convert';
import 'dart:io';
import 'package:flybuben_core/api.dart' as flybuben;

void main(List<String> arguments) {
  stdin
    .transform(utf8.decoder)
    .transform(const LineSplitter())
    .listen(
      (String line) {
        print(flybuben.toAybuben(line));
      }
    );
}