import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todos/blocs/notification/bloc.dart';


typedef NotificationIconPressCallback = void Function();

class NotificationIconButton extends StatelessWidget {
  final NotificationIconPressCallback callback;

  NotificationIconButton(this.callback);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: BlocProvider.of<NotificationBloc>(context),
        builder: (BuildContext context, NotificationState state) {
          return IconButton(
            icon: Icon(state is NewNotification
                ? Icons.notifications_active
                : Icons.notifications),
            onPressed: callback,
          );
        });
  }
}
