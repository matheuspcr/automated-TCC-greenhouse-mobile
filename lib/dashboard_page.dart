import 'package:automated_tcc_greenhouse_mobile/dio_helper.dart';
import 'package:automated_tcc_greenhouse_mobile/rest_client.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final client = RestClient(DioHelper.getDio());

  String semente = "Morango";
  String temp = "18";
  String umidade = "40";
  String luminosidade = "pouca luz";
  String nitrato = "20";
  String potassio = "0,1";
  String fosforo = "8";
  String ultAtualizacao = "21:30 02/10/2023";

  void _atualizarDados() {
    setState(() {
      client.getDashboard().then((value) => {
            semente = value.semente,
            temp = value.temperatura,
            umidade = value.umidade,
            nitrato = value.npk.nitrato,
            fosforo = value.npk.fosforo,
            potassio = value.npk.potassio,
            ultAtualizacao = value.ultimaAtualizacao
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
          padding: const EdgeInsets.only(left: 16, top: 32),
          child: Column(
            children: <Widget>[
              Text(semente),
              Text('Temperatura: $tempº'),
              Text('Umidade: $umidade%'),
              Text('Luminosidade: $luminosidade'),
              Text('Nitrato: ${nitrato}mg/kg'),
              Text('Fósforo: ${fosforo}mg/kg'),
              Text('Potássio: ${potassio}mg/kg'),
              Text('Ultima atualização: $ultAtualizacao'),
              Padding(
                padding: const EdgeInsets.only(top: 80, left: 16, right: 16),
                child: ElevatedButton(
                    onPressed: () => {_atualizarDados()},
                    child: const Text('Atualizar')),
              )
            ],
          )),
    );
  }
}
