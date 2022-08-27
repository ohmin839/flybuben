# flybuben_core
`flybuben_core` provides some CLIs and APIs.

## Conversion

### CLI
`flybuben_conv` is a command to convert text from standard input in ASCII into Aybuben in Unicode.

```bash
$ echo 'Barev Dzez:' | dart run flybuben_core:flybuben_conv
Բարև Ձեզ։

$ cat anthem_ascii.txt | dart run flybuben_core:flybuben_conv
Մեր Հայրենիք, ազատ անկախ,
Որ ապրել է դարեդար
Յուր որդիքյ արդ կանչում են
Ազատ, անկախ Հայաստան։

Ահա եգբայր քեզ մի դրոշ,
Որ իմ ձեռքով գործեցի
Գիշերներյ ես քուն չեգայ,
Արզասուքով լվացի։

Նայիր նրան՝ երեք գոյնով,
Նուիրական մեր նսջան
Թոգ փեգփոգի թշնամու դեմ
Թոգ միսպտ պանծայ Հայաստան։

Ամենայն տեգ մահը մի է
Մարդ մի անգամ պիտ մեռնի,
Բայց երանի՝ որ յուր ազգի
Ազատության կզոհվի։
```

### API
You can also use `toAybuben` function as API.

```dart
import 'package:flybuben_core/api.dart' as flybuben;

final result = flybuben.toAybuben('Barev Dzez:');
print(result); // Բարև Ձեզ։
```

### Conversion rules

#### Upper cases
| Input(ASCII) | Output(Unicode) |
| ------------ | --------------- |
| `A` | `Ա` |
| `B` | `Բ` |
| `G` | `Գ` |
| `D` | `Դ` |
| `E` | `Ե` |
| `Z` | `Զ` |
| `E'` | `Է` |
| `Y'` | `Ը` |
| `T'` | `Թ` |
| `Zh` | `Ժ` |
| `I` | `Ի` |
| `L` | `Լ` |
| `X` | `Խ` |
| `C'` | `Ծ` |
| `K` | `Կ` |
| `H` | `Հ` |
| `Dz` | `Ձ` |
| `Gh` | `Ղ` |
| `Tw` | `Ճ` |
| `M` | `Մ` |
| `Y` | `Յ` |
| `N` | `Ն` |
| `Sh` | `Շ` |
| `Vo` | `Ո` |
| `Ch` | `Չ` |
| `P` | `Պ` |
| `J` | `Ջ` |
| `Rr` | `Ռ` |
| `S` | `Ս` |
| `V` | `Վ` |
| `T` | `Տ` |
| `R` | `Ր` |
| `C` | `Ց` |
| `W` | `Ւ` |
| `P'` | `Փ` |
| `Q` | `Ք` |
| `O` | `Օ` |
| `F` | `Ֆ` |
| `U` | `Ու` |

#### Lower cases
| Input(ASCII) | Output(Unicode) |
| ------------ | --------------- |
| `a` | `ա` |
| `b` | `բ` |
| `g` | `գ` |
| `d` | `դ` |
| `e` | `ե` |
| `z` | `զ` |
| `e'` | `է` |
| `y'` | `ը` |
| `t'` | `թ` |
| `zh` | `ժ` |
| `i` | `ի` |
| `l` | `լ` |
| `x` | `խ` |
| `c'` | `ծ` |
| `k` | `կ` |
| `h` | `հ` |
| `dz` | `ձ` |
| `gh` | `ղ` |
| `tw` | `ճ` |
| `m` | `մ` |
| `y` | `յ` |
| `n` | `ն` |
| `sh` | `շ` |
| `vo` | `ո` |
| `ch` | `չ` |
| `p` | `պ` |
| `j` | `ջ` |
| `rr` | `ռ` |
| `s` | `ս` |
| `v` | `վ` |
| `t` | `տ` |
| `r` | `ր` |
| `c` | `ց` |
| `w` | `ւ` |
| `p'` | `փ` |
| `q` | `ք` |
| `o` | `օ` |
| `f` | `ֆ` |
| `u` | `ու` |
| `ev` | `և` |

#### Others
| Input(ASCII) | Output(Unicode) |
| ------------ | --------------- |
| `$` | `֏` |
| `0123456789` | `0123456789` |
| `,` | `,` |
| `.` | `.` |
| `` ` `` | `՝` |
| `:` | `։` |
| `-` | `-` |
| `(` | `(` |
| `)` | `)` |
| `<<` | `«` |
| `>>` | `»` |
| `?` | `՞` |
| `!` | `՛` |
| `!~` | `՜` |
| `␣` | `␣` |
| `\t` | `\t` |
| `\n` | `\n` |
| `\r\n` | `\r\n` |

## Collection 

### CLI
`flybuben_coll` is a command to list words uniquely from text written in Armenian.

```bash
$ cat anthem_ascii.txt | dart run flybuben_core:flybuben_conv | dart run flybuben_core:flybuben_coll
Մեր
Հայրենիք
ազատ
անկախ
...
```

### API

`toHayerenWords` function extracts Armenian words from texts:
```dart
import 'package:flybuben_core/api.dart' as flybuben;
final converted = flybuben.toAybuben('Barev Dzez:');
final words = flybuben.toHayerenWords(converted);
print(words); // [ 'Բարև', 'Ձեզ' ]
```

`toHayerenWordSet` function is the same as `toHayerenWords`
except that it extracts words uniquely(case-sensitive).
```dart
import 'package:flybuben_core/api.dart' as flybuben;
final converted = fybuben.toAybuben('Barev Dzez, Barev dzez:');
final wordSet = fybuben.toHayerenWordSet(converted);
print(wordSet); // { 'Բարև', 'Ձեզ', 'ձեզ' }
```

`toHayerenWordDict` function is the same as `toHayerenWordSet`
except that its return values are maps, not sets.
```dart
import 'package:flybuben_core/api.dart' as flybuben;
final converted = fybuben.toAybuben('Barev Dzez, Barev dzez:');
final wordDict = fybuben.toHayerenWordDict(converted);
print(wordDict); // { 'Բարև': 2, 'Ձեզ': 1, 'ձեզ': 1 }
```

## External resources
- Armenian Alphabet (https://en.wikipedia.org/wiki/Armenian_alphabet)
- Romanization of Armenian (https://en.wikipedia.org/wiki/Romanization_of_Armenian)
