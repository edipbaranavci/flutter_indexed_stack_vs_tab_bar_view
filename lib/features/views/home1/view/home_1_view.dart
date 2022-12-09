import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:index_stack_vs/features/models/post_model.dart';
import 'package:kartal/kartal.dart';

import '../cubit/home_1_cubit.dart';

class Home1View extends StatelessWidget {
  const Home1View({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<Home_1Cubit>(
      create: (context) => Home_1Cubit(),
      child: const _Home1View(),
    );
  }
}

class _Home1View extends StatelessWidget {
  const _Home1View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Home_1Cubit, Home_1State>(
      builder: (context, state) {
        return state.postModelList?.length == null
            ? buildIndicator()
            : buildListViewBuilder(state);
      },
    );
  }

  Center buildIndicator() => const Center(child: CircularProgressIndicator());

  ListView buildListViewBuilder(Home_1State state) {
    return ListView.builder(
      itemCount: state.postModelList?.length ?? 0,
      itemBuilder: (context, index) => buildCard(state.postModelList![index]),
    );
  }

  Card buildCard(PostModel model) {
    return Card(
      child: ListTile(
        leading: Text('${model.id}'),
        title: Text('${model.title}'),
        trailing: Text('${model.userId}'),
        subtitle: Text('${model.body}'),
      ),
    );
  }
}
