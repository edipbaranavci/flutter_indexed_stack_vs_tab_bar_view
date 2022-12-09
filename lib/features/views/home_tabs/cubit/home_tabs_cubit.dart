import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home1/view/home_1_view.dart';
import '../../home2/view/home_2_view.dart';

part 'home_tabs_state.dart';

class HomeTabsCubit extends Cubit<HomeTabsState> {
  HomeTabsCubit({this.tabController}) : super(HomeTabsInitial()) {
    _init();
  }
  final TabController? tabController;

  void changeIndexPage(int value) {
    emit(state.copyWith(indexPage: value));
    tabController?.animateTo(value);
  }

  void _init() {
    _setPageList();
  }

  void _setPageList() {
    emit(state.copyWith(pageList: const [Home1View(), Home2View()]));
  }
}
