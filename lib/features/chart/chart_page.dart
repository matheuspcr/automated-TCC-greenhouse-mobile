import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Gráfico"),
        ),
        body: Center(
            child: SizedBox(
              height: 500,
              child: SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  title: ChartTitle(text: 'Crescimento esperado do Maracujá a cada mês'),
                  legend: const Legend(isVisible: true, shouldAlwaysShowScrollbar: true),
                  series: <ChartSeries>[
                    SplineSeries<_ChartData, String>(
                        dataSource: [
                          _ChartData('Jan', 0),
                          _ChartData('Fev', 1),
                          _ChartData('Mar', 2),
                          _ChartData('Abr', 3),
                          _ChartData('Mai', 4),
                          _ChartData('Jun', 4),
                          _ChartData('Jul', 5),
                          _ChartData('Ago', 2),
                          _ChartData('Set', 12),
                          _ChartData('Out', 2),
                          _ChartData('Nov', 1),
                          _ChartData('Dez', 0),
                        ],
                        xValueMapper: (_ChartData data, _) => data.mes,
                        yValueMapper: (_ChartData data, _) =>
                        data.crescimentoDaPlanta,
                        name: 'Crescimento em centímetros')
                  ]),
            )));
  }
}

class _ChartData {
  _ChartData(this.mes, this.crescimentoDaPlanta);

  final String mes;
  final int crescimentoDaPlanta;
}
