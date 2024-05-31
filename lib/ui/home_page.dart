import 'package:currency_chart_project/bloc/periods_bloc.dart';
import 'package:currency_chart_project/bloc/periods_event.dart';
import 'package:currency_chart_project/bloc/periods_state.dart';
import 'package:currency_chart_project/constants.dart';
import 'package:currency_chart_project/ui/widgets/chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/components.dart';

class CurrencyChart extends StatefulWidget {
  const CurrencyChart({Key key}) : super(key: key);

  @override
  _CurrencyChartState createState() => _CurrencyChartState();
}

class _CurrencyChartState extends State<CurrencyChart> {
  PeriodsBloc periodsBloc;
  String currentPeriod = '1 week';
  @override
  void initState() {
    periodsBloc = BlocProvider.of<PeriodsBloc>(context);
    periodsBloc.add(FetchWeekEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<PeriodsBloc, PeriodsState>(builder: (context, state) {
            if (state is PeriodLoadingState) {
              return buildLoading();
            } else if (state is PeriodLoadedState) {
              return getPeriodChart(state.periods);
            } else if (state is PeriodErrorState) {
              return buildError(state.message);
            } else {
              return buildError("Bloc implementation error.");
            }
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              availablePeriodsBtn(kWeek, periods.week),
              SizedBox(width: kSizedBoxWidth),
              availablePeriodsBtn(kMonth, periods.month),
              SizedBox(width: kSizedBoxWidth),
              availablePeriodsBtn(kSixMonths, periods.sixMonths),
            ],
          ),
        ],
      ),
    );
  }

  RaisedButton availablePeriodsBtn(String btnText, period) {
    return RaisedButton(
      onPressed: () {
        setState(() {
          currentPeriod = btnText;
        });
        if (period == periods.week) {
          periodsBloc.add(FetchWeekEvent());
        } else if (period == periods.month) {
          periodsBloc.add(FetchMonthEvent());
        } else {
          periodsBloc.add(FetchSixMonthsEvent());
        }
      },
      color: currentPeriod == btnText ? Colors.white : Colors.grey[700],
      shape: StadiumBorder(),
      child: Text(
        '$btnText',
        style: TextStyle(
          color: currentPeriod == btnText ? Colors.grey[700] : Colors.white,
        ),
      ),
    );
  }
}
