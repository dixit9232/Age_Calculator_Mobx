// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Calculation.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$calculation on _calculation, Store {
  late final _$pickDobAtom =
      Atom(name: '_calculation.pickDob', context: context);

  @override
  DateTime get pickDob {
    _$pickDobAtom.reportRead();
    return super.pickDob;
  }

  @override
  set pickDob(DateTime value) {
    _$pickDobAtom.reportWrite(value, super.pickDob, () {
      super.pickDob = value;
    });
  }

  late final _$yearAtom = Atom(name: '_calculation.year', context: context);

  @override
  int get year {
    _$yearAtom.reportRead();
    return super.year;
  }

  @override
  set year(int value) {
    _$yearAtom.reportWrite(value, super.year, () {
      super.year = value;
    });
  }

  late final _$monthAtom = Atom(name: '_calculation.month', context: context);

  @override
  int get month {
    _$monthAtom.reportRead();
    return super.month;
  }

  @override
  set month(int value) {
    _$monthAtom.reportWrite(value, super.month, () {
      super.month = value;
    });
  }

  late final _$dayAtom = Atom(name: '_calculation.day', context: context);

  @override
  int get day {
    _$dayAtom.reportRead();
    return super.day;
  }

  @override
  set day(int value) {
    _$dayAtom.reportWrite(value, super.day, () {
      super.day = value;
    });
  }

  late final _$ErrrorAtom = Atom(name: '_calculation.Errror', context: context);

  @override
  String get Errror {
    _$ErrrorAtom.reportRead();
    return super.Errror;
  }

  @override
  set Errror(String value) {
    _$ErrrorAtom.reportWrite(value, super.Errror, () {
      super.Errror = value;
    });
  }

  late final _$tempAtom = Atom(name: '_calculation.temp', context: context);

  @override
  bool get temp {
    _$tempAtom.reportRead();
    return super.temp;
  }

  @override
  set temp(bool value) {
    _$tempAtom.reportWrite(value, super.temp, () {
      super.temp = value;
    });
  }

  late final _$dobPickerAsyncAction =
      AsyncAction('_calculation.dobPicker', context: context);

  @override
  Future dobPicker(BuildContext context) {
    return _$dobPickerAsyncAction.run(() => super.dobPicker(context));
  }

  @override
  String toString() {
    return '''
pickDob: ${pickDob},
year: ${year},
month: ${month},
day: ${day},
Errror: ${Errror},
temp: ${temp}
    ''';
  }
}
