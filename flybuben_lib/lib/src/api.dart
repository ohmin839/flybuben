import 'converter.dart';

String toAybuben(String ascii) {
  final parser = ConversionParser();
  return parser.parse(ascii).value;
}