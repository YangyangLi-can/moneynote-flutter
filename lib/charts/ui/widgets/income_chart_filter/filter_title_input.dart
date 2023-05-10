import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/components/index.dart';
import '/charts/index.dart';

class FilterTitleInput extends StatelessWidget {

  const FilterTitleInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ChartIncomeCategoryBloc, ChartIncomeCategoryState, int?>(
        selector: (state) => state.query['title'],
        builder: (context, state) {
          return MyFormText(
            label: '标题',
            value: state,
            onChange: (value) => context.read<ChartIncomeCategoryBloc>().add(ChartIncomeCategoryQueryChanged({'title': value})),
          );
        }
    );
  }

}


