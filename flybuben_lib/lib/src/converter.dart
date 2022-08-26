import 'package:petitparser/petitparser.dart';

Parser<String> _buildParser() {
  // upper cases
  final Parser<String> largeA =
    char('A').map((value) => '\u0531');
  final Parser<String> largeB =
    char('B').map((value) => '\u0532');
  final Parser<String> largeC = 
    (char('C') & pattern("h'").optional())
      .flatten()
      .map(
        (value) {
          if (value.contains('h')) {
            return '\u0549';
          } else if (value.contains("'")) {
            return '\u053E';
          } else {
            return '\u0551';
          }
        }
      );
  final Parser<String> largeD = 
    (char('D') & char('z').optional())
      .flatten()
      .map(
        (value) {
          if (value.contains('z')) {
            return '\u0541';
          } else {
            return '\u0534';
          }
        }
      );
  final Parser<String> largeE =
    (char('E') & char("'").optional())
      .flatten()
      .map(
        (value) {
          if (value.contains("'")) {
            return '\u0537';
          } else {
            return '\u0535';
          }
        }
      );

  // lower cases

  final Parser<String> anyChar = any().map((value) => value);

  final Parser<String> lttr = 
    ( largeA
    | largeB
    | largeC
    | anyChar
    ).map((value) => value);

  final Parser<String> lttrs = (lttr.star()).map((values) => values.join(""));

  return lttrs;
}

class ConversionParser extends Parser<String> {
  static final _parser = _buildParser();

  @override
  Parser<String> copy() {
    return _parser;
  }

  @override
  Result<String> parseOn(Context context) {
    return _parser.parseOn(context);
  }
}