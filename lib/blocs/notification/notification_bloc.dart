import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  // NotificationRespository

  @override
  NotificationState get initialState => NoNewNotification();

  @override
  Stream<NotificationState> mapEventToState(NotificationEvent event) async* {
    if (event is ToggleNotification) {
      if (currentState is NoNewNotification) {
        yield NewNotification();
      } else {
        yield NoNewNotification();
      }
    }
  }
}
