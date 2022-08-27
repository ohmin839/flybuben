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
  final Parser<String> largeF =
    char('F').map((value) => '\u0556');
  final Parser<String> largeG =
    (char('G') & char('h').optional())
      .flatten()
      .map(
        (value) {
          if (value.contains('h')) {
            return '\u0542';
          } else {
            return '\u0533';
          }
        }
      );
  final Parser<String> largeH =
    char('H').map((value) => '\u0540');
  final Parser<String> largeI =
    char('I').map((value) => '\u053B');
  final Parser<String> largeJ =
    char('J').map((value) => '\u054B');
  final Parser<String> largeK =
    char('K').map((value) => '\u053F');
  final Parser<String> largeL =
    char('L').map((value) => '\u053C');
  final Parser<String> largeM =
    char('M').map((value) => '\u0544');
  final Parser<String> largeN =
    char('N').map((value) => '\u0546');
  final Parser<String> largeO =
    char('O').map((value) => '\u0555');
  final Parser<String> largeP =
    (char('P') & char("'").optional())
      .flatten()
      .map(
        (value) {
          if (value.contains("'")) {
            return '\u0553';
          } else {
            return '\u054A';
          }
        }
      );
  final Parser<String> largeQ =
    char('Q').map((value) => '\u0554');
  final Parser<String> largeR =
    (char('R') & char('r').optional())
      .flatten()
      .map(
        (value) {
          if (value.contains('r')) {
            return '\u054C';
          } else {
            return '\u0550';
          }
        }
      );
  final Parser<String> largeS =
    (char('S') & char('h').optional())
      .flatten()
      .map(
        (value) {
          if (value.contains('h')) {
            return '\u0547';
          } else {
            return '\u054D';
          }
        }
      );
  final Parser<String> largeT = 
    (char('T') & pattern("w'").optional())
      .flatten()
      .map(
        (value) {
          if (value.contains('w')) {
            return '\u0543';
          } else if (value.contains("'")) {
            return '\u0539';
          } else {
            return '\u054F';
          }
        }
      );
  final Parser<String> largeU =
    char('U').map((value) => '\u0548\u0582');
  final Parser<String> largeV =
    (char('V') & char('o').optional())
      .flatten()
      .map(
        (value) {
          if (value.contains('o')) {
            return '\u0548';
          } else {
            return '\u054E';
          }
        }
      );
  final Parser<String> largeW =
    char('W').map((value) => '\u0552');
  final Parser<String> largeX=
    char('X').map((value) => '\u053D');
  final Parser<String> largeY =
    (char('Y') & char("'").optional())
      .flatten()
      .map(
        (value) {
          if (value.contains("'")) {
            return '\u0538';
          } else {
            return '\u0545';
          }
        }
      );
  final Parser<String> largeZ =
    (char('Z') & char('h').optional())
      .flatten()
      .map(
        (value) {
          if (value.contains('h')) {
            return '\u053A';
          } else {
            return '\u0536';
          }
        }
      );

  // lower cases
  final Parser<String> smallA =
    char('a').map((value) => '\u0561');
  final Parser<String> smallB =
    char('b').map((value) => '\u0562');
  final Parser<String> smallC = 
    (char('c') & pattern("h'").optional())
      .flatten()
      .map(
        (value) {
          if (value.contains('h')) {
            return '\u0579';
          } else if (value.contains("'")) {
            return '\u056E';
          } else {
            return '\u0581';
          }
        }
      );
  final Parser<String> smallD = 
    (char('d') & char('z').optional())
      .flatten()
      .map(
        (value) {
          if (value.contains('z')) {
            return '\u0571';
          } else {
            return '\u0564';
          }
        }
      );
  final Parser<String> smallE =
    (char('e') & pattern("v'").optional())
      .flatten()
      .map(
        (value) {
          if (value.contains('v')) {
            return '\u0587';
          } else if (value.contains("'")) {
            return '\u0567';
          } else {
            return '\u0565';
          }
        }
      );
  final Parser<String> smallF =
    char('f').map((value) => '\u0586');
  final Parser<String> smallG =
    (char('g') & char('h').optional())
      .flatten()
      .map(
        (value) {
          if (value.contains('h')) {
            return '\u0572';
          } else {
            return '\u0563';
          }
        }
      );
  final Parser<String> smallH =
    char('h').map((value) => '\u0570');
  final Parser<String> smallI =
    char('i').map((value) => '\u056B');
  final Parser<String> smallJ =
    char('j').map((value) => '\u057B');
  final Parser<String> smallK =
    char('k').map((value) => '\u056F');
  final Parser<String> smallL =
    char('l').map((value) => '\u056C');
  final Parser<String> smallM =
    char('m').map((value) => '\u0574');
  final Parser<String> smallN =
    char('n').map((value) => '\u0576');
  final Parser<String> smallO =
    char('o').map((value) => '\u0585');
  final Parser<String> smallP =
    (char('p') & char("'").optional())
      .flatten()
      .map(
        (value) {
          if (value.contains("'")) {
            return '\u0583';
          } else {
            return '\u057A';
          }
        }
      );
  final Parser<String> smallQ =
    char('q').map((value) => '\u0584');
  final Parser<String> smallR =
    (char('r') & char('r').optional())
      .flatten()
      .map(
        (value) {
          if (value == 'rr') {
            return '\u057C';
          } else {
            return '\u0580';
          }
        }
      );
  final Parser<String> smallS =
    (char('s') & char('h').optional())
      .flatten()
      .map(
        (value) {
          if (value.contains('h')) {
            return '\u0577';
          } else {
            return '\u057D';
          }
        }
      );
  final Parser<String> smallT = 
    (char('t') & pattern("w'").optional())
      .flatten()
      .map(
        (value) {
          if (value.contains('w')) {
            return '\u0573';
          } else if (value.contains("'")) {
            return '\u0569';
          } else {
            return '\u057F';
          }
        }
      );
  final Parser<String> smallU =
    char('u').map((value) => '\u0578\u0582');
  final Parser<String> smallV =
    (char('v') & char('o').optional())
      .flatten()
      .map(
        (value) {
          if (value.contains('o')) {
            return '\u0578';
          } else {
            return '\u057E';
          }
        }
      );
  final Parser<String> smallW =
    char('w').map((value) => '\u0582');
  final Parser<String> smallX=
    char('x').map((value) => '\u056D');
  final Parser<String> smallY =
    (char('y') & char("'").optional())
      .flatten()
      .map(
        (value) {
          if (value.contains("'")) {
            return '\u0568';
          } else {
            return '\u0575';
          }
        }
      );
  final Parser<String> smallZ =
    (char('z') & char('h').optional())
      .flatten()
      .map(
        (value) {
          if (value.contains('h')) {
            return '\u056A';
          } else {
            return '\u0566';
          }
        }
      );

  // others
  final Parser<String> dollar =
    char('\$').map((value) => '\u058F');
  final Parser<String> digits =
    digit().plus().map((values) => values.join(''));
  final Parser<String> comma =
    char(',').map((value) => value);
  final Parser<String> period =
    char('.').map((value) => value);
  final Parser<String> backQuote =
    char('`').map((value) => '\u055D');
  final Parser<String> colon =
    char(':').map((value) => '\u0589');
  final Parser<String> hyphen =
    char('-').map((value) => value);
  final Parser<String> leftParenthesis =
    char('(').map((value) => value);
  final Parser<String> rightParenthesis =
    char(')').map((value) => value);
  final Parser<String> leftGuillemet =
    (char('<') & char('<'))
      .flatten()
      .map((value) => '\u00AB');
  final Parser<String> rightGuillemet =
    (char('>') & char('>'))
      .flatten()
      .map((value) => '\u00BB');
  final Parser<String> question =
    char('?').map((value) => '\u055E');
  final Parser<String> exclamation =
    (char('!') & char('~').optional())
      .flatten()
      .map(
        (value) {
          if (value.contains('~')) {
            return '\u055C';
          } else {
            return '\u055B';
          }
        }
      );
  final Parser<String> space =
    pattern(' \t').map((value) => value);
  final Parser<String> newline =
    (char('\r').optional() & char('\n'))
      .flatten()
      .map((value) => value);

  final Parser<String> anyChar = any().map((value) => value);

  final Parser<String> lttr = 
    ( largeA
    | largeB
    | largeC
    | largeD
    | largeE
    | largeF
    | largeG
    | largeH
    | largeI
    | largeJ
    | largeK
    | largeL
    | largeM
    | largeN
    | largeO
    | largeP
    | largeQ
    | largeR
    | largeS
    | largeT
    | largeU
    | largeV
    | largeW
    | largeX
    | largeY
    | largeZ
    | smallA
    | smallB
    | smallC
    | smallD
    | smallE
    | smallF
    | smallG
    | smallH
    | smallI
    | smallJ
    | smallK
    | smallL
    | smallM
    | smallN
    | smallO
    | smallP
    | smallQ
    | smallR
    | smallS
    | smallT
    | smallU
    | smallV
    | smallW
    | smallX
    | smallY
    | smallZ
    | dollar
    | digits
    | comma
    | period
    | backQuote
    | colon
    | hyphen
    | leftParenthesis
    | rightParenthesis
    | leftGuillemet
    | rightGuillemet
    | question
    | exclamation
    | space
    | newline
    | anyChar
    ).map((value) => value);

  final Parser<String> lttrs = (lttr.star()).map((values) => values.join(''));

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
