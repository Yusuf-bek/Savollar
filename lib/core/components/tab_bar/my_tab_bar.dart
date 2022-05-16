import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savollar/cubit/tab_bar_cubit/tab_bar_cubit.dart';
import 'package:savollar/cubit/tab_bar_cubit/tab_bar_state.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TabBarCubit(
        TabBarInitialState(),
      ),
      child: Builder(builder: (context) {
        return getScaffold(context);
      }),
    );
  }

  DefaultTabController getScaffold(BuildContext context) {
    return DefaultTabController(
      initialIndex: context.watch<TabBarCubit>().index,
      length: 2,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              TabBar(
                onTap: (value) {
                  context.read<TabBarCubit>().change(value);
                },
                tabs:  [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    child: const Text("Questions").tr(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    child: const Text("Results").tr(),
                  ),
                ],
              ),
              Expanded(
                child: context.read<TabBarCubit>().getPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
