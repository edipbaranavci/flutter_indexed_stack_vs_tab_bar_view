import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:index_stack_vs/features/models/post_model.dart';

import '../../../services/network_service.dart';

part 'home_1_state.dart';

class Home_1Cubit extends Cubit<Home_1State> {
  Home_1Cubit() : super(Home_1Initial()) {
    _init();
  }

  final _service = NetworkService();

  void _init() {
    _getPostList();
  }

  Future<void> _getPostList() async {
    final list = await _service.fetPostList();
    list is List ? emit(state.copyWith(postModelList: list)) : null;
  }
}
