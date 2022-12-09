part of 'home_tabs_cubit.dart';

class HomeTabsState extends Equatable {
  const HomeTabsState({
    this.indexPage = 0,
    this.pageList,
  });

  final int indexPage;
  final List<Widget>? pageList;

  @override
  List<Object> get props => [indexPage, pageList ?? []];

  HomeTabsState copyWith({
    int? indexPage,
    List<Widget>? pageList,
  }) {
    return HomeTabsState(
      indexPage: indexPage ?? this.indexPage,
      pageList: pageList ?? this.pageList,
    );
  }
}

class HomeTabsInitial extends HomeTabsState {}
