import 'package:mobx/mobx.dart';

part 'color_store.g.dart';

class ColorStore = _ColorStore with _$ColorStore;

abstract class _ColorStore with Store {
  @observable
  double red = 125.0;

  @observable
  double green = 125.0;
  
  @observable
  double blue = 125.0;

  @computed
  String get hexColor {
    int r = red.toInt();
    int g = green.toInt();
    int b = blue.toInt();
    return '#${r.toRadixString(16).padLeft(2, '0')}${g.toRadixString(16).padLeft(2, '0')}${b.toRadixString(16).padLeft(2, '0')}'.toUpperCase();
  }

  @action
  void setRed(double value) {
    red = value;
  }

  @action
  void setGreen(double value) {
    green = value;
  }

  @action
  void setBlue(double value) {
    blue = value;
  }
}
