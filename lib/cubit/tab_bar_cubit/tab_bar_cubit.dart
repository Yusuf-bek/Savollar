import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savollar/cubit/tab_bar_cubit/tab_bar_state.dart';
import 'package:savollar/view/home/home_page.dart';
import 'package:savollar/view/results/results_page.dart';

class TabBarCubit extends Cubit<TabBarState> {
  TabBarCubit(TabBarInitialState initialState) : super(initialState);

  List tabPages = [const HomePage(), const ResultsPage()];

  int index = 0;

  Widget getPage() {
    return tabPages[index];
  }

  void change(int value) {
    index = value;
    emit(TabBarChangedState());
  }
}
