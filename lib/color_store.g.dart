// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ColorStore on _ColorStore, Store {
  Computed<String>? _$hexColorComputed;

  @override
  String get hexColor => (_$hexColorComputed ??=
          Computed<String>(() => super.hexColor, name: '_ColorStore.hexColor'))
      .value;

  late final _$redAtom = Atom(name: '_ColorStore.red', context: context);

  @override
  double get red {
    _$redAtom.reportRead();
    return super.red;
  }

  @override
  set red(double value) {
    _$redAtom.reportWrite(value, super.red, () {
      super.red = value;
    });
  }

  late final _$greenAtom = Atom(name: '_ColorStore.green', context: context);

  @override
  double get green {
    _$greenAtom.reportRead();
    return super.green;
  }

  @override
  set green(double value) {
    _$greenAtom.reportWrite(value, super.green, () {
      super.green = value;
    });
  }

  late final _$blueAtom = Atom(name: '_ColorStore.blue', context: context);

  @override
  double get blue {
    _$blueAtom.reportRead();
    return super.blue;
  }

  @override
  set blue(double value) {
    _$blueAtom.reportWrite(value, super.blue, () {
      super.blue = value;
    });
  }

  late final _$_ColorStoreActionController =
      ActionController(name: '_ColorStore', context: context);

  @override
  void setRed(double value) {
    final _$actionInfo =
        _$_ColorStoreActionController.startAction(name: '_ColorStore.setRed');
    try {
      return super.setRed(value);
    } finally {
      _$_ColorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setGreen(double value) {
    final _$actionInfo =
        _$_ColorStoreActionController.startAction(name: '_ColorStore.setGreen');
    try {
      return super.setGreen(value);
    } finally {
      _$_ColorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBlue(double value) {
    final _$actionInfo =
        _$_ColorStoreActionController.startAction(name: '_ColorStore.setBlue');
    try {
      return super.setBlue(value);
    } finally {
      _$_ColorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
red: ${red},
green: ${green},
blue: ${blue},
hexColor: ${hexColor}
    ''';
  }
}
