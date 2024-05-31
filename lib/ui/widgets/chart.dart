import 'package:currency_chart_project/model/currency_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

Column getPeriodChart(List<CurrencyData> chartData) {
  return Column(
    children: [
      Container(
        child: Text(
          "\$${chartData.last.price} usd",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              getDropValue(chartData),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(width: 10),
          Container(
            child: Text(
              getDropPercent(chartData),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
      SfCartesianChart(
        title: ChartTitle(
          text: 'Currency Chart',
        ),
        tooltipBehavior: TooltipBehavior(
          enable: true,
          header: "Currency Chart",
        ),
        series: <ChartSeries>[
          SplineSeries<CurrencyData, int>(
            dataSource: chartData,
            xValueMapper: (CurrencyData data, _) => data.date,
            yValueMapper: (CurrencyData data, _) => data.price,
          ),
        ],
      ),
    ],
  );
}

String getDropValue(List<CurrencyData> chartData) {
  return "\$" + (chartData[chartData.length - 2].price - chartData.last.price).toStringAsFixed(2);
}

String getDropPercent(List<CurrencyData> chartData) {
  double dropValue = chartData[chartData.length - 2].price - chartData.last.price;
  double lastValue = chartData.last.price;
  double result = dropValue / lastValue;
  return "(" + result.abs().toStringAsFixed(2) + "%)";
}
