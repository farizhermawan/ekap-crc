import 'package:simple_moment/simple_moment.dart';

class LocaleId implements ILocaleData {
  String get seconds => 'beberapa saat';

  String get aMinute => 'satu menit';
  String get minutes => '%i menit';

  String get anHour => 'satu jam';
  String get hours => '%i jam';

  String get aDay => 'satu hari';
  String get days => '%i hari';

  String get aMonth => 'satu bulan';
  String get months => '%i bulan';

  String get aYear => 'satu tahun';
  String get years => '%i tahun';

  String get futureIdentifier => 'dalam';
  String get pastIdentifier => 'lalu';

  IdentifierPosition get futurePosition => IdentifierPosition.prepend;
  IdentifierPosition get pastPosition => IdentifierPosition.append;
}
