import 'package:petitparser/petitparser.dart';

Parser<String> _buildParser() {
  final Parser<String> word =
    pattern('ԱԲԳԴԵԶԷԸԹԺԻԼԽԾԿՀՁՂՃՄՅՆՇՈՉՊՋՌՍՎՏՐՑՒՓՔՕՖՈաբգդեզէըթժիլխծկհձղճմյնշոչպջռսվտրցւփքօֆոև')
    .plus()
    .map((values) => values.join(''));

  return word;
}

class CollectionParser extends Parser<String> {
  static final _parser = _buildParser();

  @override
  Parser<String> copy() {
    return this;
  }

  @override
  Result<String> parseOn(Context context) {
    return _parser.parseOn(context);
  }
}
