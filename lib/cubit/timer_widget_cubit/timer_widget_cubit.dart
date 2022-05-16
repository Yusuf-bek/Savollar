import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savollar/cubit/timer_widget_cubit/timer_widget_state.dart';

class TimerWidgetCubit extends Cubit<TimerWidgetState> {
  TimerWidgetCubit(TimerWidgetState initialState) : super(initialState);

  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => _animation;
}
