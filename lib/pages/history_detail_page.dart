import 'package:covidapp/models/country_model.dart';
import 'package:covidapp/models/history_confirm_model.dart';
import 'package:covidapp/providers/history_confirm_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_charts/flutter_charts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class HistoryDetailPage extends StatefulWidget {
  final String country;
  final String flag;
  final List<Chart> chart;
  HistoryDetailPage(
      {Key? key,
      required this.country,
      required this.flag,
      required this.chart})
      : super(key: key);

  @override
  _HistoryDetailPageState createState() => _HistoryDetailPageState();
}

class _HistoryDetailPageState extends State<HistoryDetailPage> {
  Widget chartToRun() {
    LabelLayoutStrategy? xContainerLabelLayoutStrategy;
    ChartData chartData;

    // List<double> data = [];
    // widget.chart.forEach((element) {
    //   data.add(element.cases.toDouble());
    // });
    List<List<double>> cases = [
      [widget.chart[0].cases.toDouble(), 0, 0],
      [0, widget.chart[1].cases.toDouble(), 0],
      [0, 0, widget.chart[2].cases.toDouble()],
    ];
    List<String> date = [];
    widget.chart.forEach((element) {
      date.add(element.date.toString());
    });

    ChartOptions chartOptions = const ChartOptions();
    // Example shows an explicit use of the DefaultIterativeLabelLayoutStrategy.
    // The xContainerLabelLayoutStrategy, if set to null or not set at all,
    //   defaults to DefaultIterativeLabelLayoutStrategy
    // Clients can also create their own LayoutStrategy.
    xContainerLabelLayoutStrategy = DefaultIterativeLabelLayoutStrategy(
      options: chartOptions,
    );
    chartData = ChartData(
      dataRows: cases,

      // dataRows: const [
      //   [10.0, 20.0, 5.0, 30.0, 5.0, 20.0],
      //   [30.0, 60.0, 16.0, 100.0, 12.0, 120.0],
      //   [25.0, 40.0, 20.0, 80.0, 12.0, 90.0],
      //   [12.0, 30.0, 18.0, 40.0, 10.0, 30.0],
      // ],
      xUserLabels: date,
      dataRowsLegends: date,
      chartOptions: chartOptions,
    );
    // chartData.dataRowsDefaultColors(); // if not set, called in constructor
    var verticalBarChartContainer = VerticalBarChartTopContainer(
      chartData: chartData,
      xContainerLabelLayoutStrategy: xContainerLabelLayoutStrategy,
    );

    var verticalBarChart = VerticalBarChart(
      painter: VerticalBarChartPainter(
        verticalBarChartContainer: verticalBarChartContainer,
      ),
    );
    return verticalBarChart;
  }

  @override
  Widget build(BuildContext context) {
    Future<Confirmed> getConfirmed(String country) {
      return Provider.of<ConfirmedProvider>(context).getConfirmed(country);
    }

    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('History Covid'),
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      child: Column(children: [
                        Image.asset('icons/flags/png/${widget.flag}.png',
                            package: 'country_icons'),
                        SizedBox(
                          height: 8,
                        ),
                        Text(widget.country),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              child: Expanded(
                // #### Core chart
                child: chartToRun(), // verticalBarChart, lineChart
              ),
            ),
          ],
        ));
  }
}
