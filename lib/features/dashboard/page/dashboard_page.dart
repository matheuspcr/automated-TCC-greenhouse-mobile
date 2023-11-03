import 'package:automated_tcc_greenhouse_mobile/helper/rest_client.dart';
import '../../../custom_widgets/default_text.dart';
import '../../../helper/dio_helper.dart';
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
    client.getDashboard().then((value) => {
          semente = value.semente,
          temp = value.temperatura,
          umidade = value.umidade,
          nitrato = value.npk.nitrato,
          fosforo = value.npk.fosforo,
          potassio = value.npk.potassio,
          ultAtualizacao = value.ultimaAtualizacao,
          setState(() {})
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
        ),
        body: Container(
          child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(semente, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  DefaultText(data: 'Temperatura: $tempº'),
                  DefaultText(data: 'Umidade: $umidade%'),
                  DefaultText(data: 'Luminosidade: $luminosidade'),
                  DefaultText(data: 'Nitrato: ${nitrato}mg/kg'),
                  DefaultText(data: 'Fósforo: ${fosforo}mg/kg'),
                  DefaultText(data: 'Potássio: ${potassio}mg/kg'),
                  DefaultText(data: 'Ultima atualização: $ultAtualizacao'),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 80, left: 16, right: 16),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50), // NEW
                        ),
                        onPressed: () => {_atualizarDados()},
                        child: const Text('Atualizar')),
                  )
                ],
              )),
        ));
  }
}
