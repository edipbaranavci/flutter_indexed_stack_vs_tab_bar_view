// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_1_cubit.dart';

class Home_1State extends Equatable {
  const Home_1State({
    this.postModelList,
  });

  final List<PostModel>? postModelList;

  @override
  List<Object> get props => [
        postModelList ?? [],
      ];

  Home_1State copyWith({
    List<PostModel>? postModelList,
  }) {
    return Home_1State(
      postModelList: postModelList ?? this.postModelList,
    );
  }
}

class Home_1Initial extends Home_1State {}
