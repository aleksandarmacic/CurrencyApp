import 'package:bloc/bloc.dart';
import 'package:currency_chart_project/model/currency_data.dart';
import 'periods_event.dart';
import 'periods_state.dart';
import 'package:currency_chart_project/model/data_list.dart';

class PeriodsBloc extends Bloc<PeriodsEvent, PeriodsState>{
  PeriodsBloc(PeriodsState initialState) : super(initialState);

  PeriodsState get initialState => PeriodInitialState();
  
  @override
  Stream<PeriodsState> mapEventToState(PeriodsEvent event) async* {
    
    // TODO: implement mapEventToState
    if(event is FetchWeekEvent) {
      yield PeriodLoadingState();
      List<CurrencyData> periods = getWeekChartData();
      await Future.delayed(Duration(seconds: 1));
      yield PeriodLoadedState(periods: periods);
      // yield PeriodLoadedState(periods: periods);
    } else if(event is FetchMonthEvent) {
      yield PeriodLoadingState();
      List<CurrencyData> periods = getMonthChartData();
      await Future.delayed(Duration(seconds: 1)); 
      yield PeriodLoadedState(periods: periods);
      // yield PeriodLoadedState(periods: periods);
    } else if(event is FetchSixMonthsEvent) {
      yield PeriodLoadingState();
      List<CurrencyData> periods = getSixMonthsChartData();
      await Future.delayed(Duration(seconds: 1));
      yield PeriodLoadedState(periods: periods);
      // yield PeriodLoadedState(periods: periods);
    } else {
      PeriodErrorState(message: "Error loading data.");
    }
  }
}