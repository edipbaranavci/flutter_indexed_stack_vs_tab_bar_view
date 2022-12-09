import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:index_stack_vs/features/views/home_tabs/cubit/home_tabs_cubit.dart';

class HomeTabsView extends StatefulWidget {
  const HomeTabsView({super.key});

  @override
  State<HomeTabsView> createState() => _HomeTabsViewState();
}

class _HomeTabsViewState extends State<HomeTabsView>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeTabsCubit>(
      create: (context) =>
          HomeTabsCubit(tabController: TabController(length: 2, vsync: this)),
      child: const _HomeTabsView(),
    );
  }
}

class _HomeTabsView extends StatelessWidget {
  const _HomeTabsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<HomeTabsCubit, HomeTabsState>(
        builder: (context, state) {
          return TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: context.read<HomeTabsCubit>().tabController,
            children: state.pageList ?? [],
          );
        },
      ),
      bottomNavigationBar: buildBottomAppBar(context),
    );
  }

  BottomAppBar buildBottomAppBar(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [buildButton(context, 0), buildButton(context, 1)],
      ),
    );
  }

  TextButton buildButton(BuildContext context, int value) {
    return TextButton(
      onPressed: () => context.read<HomeTabsCubit>().changeIndexPage(value),
      child: Text('Sayfa ${value + 1}'),
    );
  }
}
