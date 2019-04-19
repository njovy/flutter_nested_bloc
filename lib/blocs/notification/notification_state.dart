import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class NotificationState extends Equatable {
  NotificationState([List props = const []]) : super(props);
}

class NewNotification extends NotificationState {}

class NoNewNotification extends NotificationState {}
