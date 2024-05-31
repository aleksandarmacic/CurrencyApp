import 'package:currency_chart_project/model/currency_data.dart';

abstract class PeriodsState {}

class PeriodInitialState extends PeriodsState {
  @override
  List<Object> get props => [];
}

class PeriodLoadingState extends PeriodsState {
  @override
  List<Object> get props => [];
}

class PeriodLoadedState extends PeriodsState {
  List<CurrencyData> periods;
  PeriodLoadedState({this.periods});
  @override
  List<Object> get props => [];
}

class PeriodErrorState extends PeriodsState {
  String message;
  PeriodErrorState({this.message});
  @override
  List<Object> get props => [];
}
