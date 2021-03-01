import 'package:equatable/equatable.dart';

class ScreenConfig extends Equatable {
  static const list = [
    ScreenConfig(idLeucovorin, 'Leukovarino skaičiuoklė', '/vial-calculation'),
    ScreenConfig(idVial, 'Flakonų skaičiuoklė', '/leucovorin-calculation')
  ];
  static const idLeucovorin = 'LEUCOVORIN';
  static const idVial = 'VIAL';

  final String id;
  final String title;
  final String route;

  const ScreenConfig(this.id, this.title, this.route);

  static String getRouteById(String id) => list.getById(id).route;

  @override
  List<Object> get props => [id, title, route];
}

extension ScreenConfigSearch on List<ScreenConfig> {
  ScreenConfig getById(String id) =>
      ScreenConfig.list.firstWhere((element) => element.id == id);
}
