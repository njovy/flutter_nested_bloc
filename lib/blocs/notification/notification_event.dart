import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class NotificationEvent extends Equatable {
  NotificationEvent([List props = const []]) : super(props);
}

class ToggleNotification extends NotificationEvent {

  ToggleNotification();
}

