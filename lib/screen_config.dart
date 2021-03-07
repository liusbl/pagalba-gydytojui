import 'package:equatable/equatable.dart';

class ScreenConfig extends Equatable {
  static const list = [/* TODO configLeucovorin, */configVial];
  static const configLeucovorin = ScreenConfig('Leukovarino skaičiuoklė', '/vial-calculation');
  static const configVial = ScreenConfig('"Comirnaty" flakonų skaičiuoklė', '/leucovorin-calculation');

  final String title;
  final String route;

  const ScreenConfig(this.title, this.route);

  @override
  List<Object> get props => [title, route];
}
