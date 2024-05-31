import 'package:currency_chart_project/bloc/periods_bloc.dart';
import 'package:currency_chart_project/bloc/periods_state.dart';
import 'package:currency_chart_project/ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(CurrencyChartApp());
}

class CurrencyChartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PeriodsBloc(PeriodInitialState()),
      child: MaterialApp(home: CurrencyChart()),
    );
  }
}
