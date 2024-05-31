import 'package:currency_chart_project/model/currency_data.dart';

List<CurrencyData> getWeekChartData() {
  final List<CurrencyData> chartData = [
    CurrencyData(1, 25000.67),
    CurrencyData(2, 15000.30),
    CurrencyData(3, 53700.0),
    CurrencyData(4, 17000.5),
    CurrencyData(5, 35000.0),
    CurrencyData(6, 17000.0),
    CurrencyData(7, 35000.0)
  ];
  return chartData;
}

List<CurrencyData> getMonthChartData() {
  final List<CurrencyData> chartData = [
    CurrencyData(1, 15000.0),
    CurrencyData(2, 15000.0),
    CurrencyData(3, 23000.0),
    CurrencyData(4, 35000.0),
    CurrencyData(5, 11000.0),
    CurrencyData(6, 15000.7),
    CurrencyData(7, 10000.3),
    CurrencyData(8, 23000.0),
    CurrencyData(9, 19000.0),
    CurrencyData(10, 11000.1),
    CurrencyData(11, 15000.7),
    CurrencyData(12, 15000.3),
    CurrencyData(13, 23000.65),
    CurrencyData(14, 35000.7),
    CurrencyData(15, 11000.50),
    CurrencyData(16, 27000.3),
    CurrencyData(17, 15000.1),
    CurrencyData(18, 23000.5),
    CurrencyData(19, 27000.0),
    CurrencyData(20, 11000.0),
    CurrencyData(21, 15000.0),
    CurrencyData(22, 15000.3),
    CurrencyData(23, 23000.5),
    CurrencyData(24, 18000.0),
    CurrencyData(25, 11000.1),
    CurrencyData(26, 50000.3),
    CurrencyData(27, 30000.5),
    CurrencyData(28, 23000.1),
    CurrencyData(29, 43000.5),
    CurrencyData(30, 11000.67),
  ];
  return chartData;
}

List<CurrencyData> getSixMonthsChartData() {
  final List<CurrencyData> chartData = [
    CurrencyData(1, 15000.30),
    CurrencyData(2, 10000.0),
    CurrencyData(3, 70000.1),
    CurrencyData(4, 30000.3),
    CurrencyData(5, 35000.0),
    CurrencyData(6, 33000.0),
  ];
  return chartData;
}
