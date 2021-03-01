import 'package:equatable/equatable.dart';

class ScreenConfig extends Equatable {
  final String title;
  final String route;

  const ScreenConfig(this.title, this.route);

  @override
  List<Object> get props => [title, route];
}
