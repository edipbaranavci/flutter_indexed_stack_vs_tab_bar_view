import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';

import '../cubit/home_2_cubit.dart';

class Home2View extends StatelessWidget {
  const Home2View({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<Home_2Cubit>(
      create: (context) => Home_2Cubit(),
      child: const _Home2View(),
    );
  }
}

class _Home2View extends StatelessWidget {
  const _Home2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'Sayfa 2',
        style: context.textTheme.headline3,
      )
    ]);
  }
}
