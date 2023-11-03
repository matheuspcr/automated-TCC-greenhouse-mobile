import 'package:automated_tcc_greenhouse_mobile/helper/rest_client.dart';
import '../../../custom_widgets/default_text.dart';
import '../../../helper/dio_helper.dart';
import 'package:flutter/material.dart';

class ConfigurationPage extends StatefulWidget {
  const ConfigurationPage({super.key});

  @override
  State<ConfigurationPage> createState() => _ConfigurationPageState();
}

class _ConfigurationPageState extends State<ConfigurationPage> {
  final client = RestClient(DioHelper.getDio());
  static const List<String> seedList = <String>['Maracujá', 'Morango', 'Banana', 'Pera', 'Maça', 'Arroz', 'Feijão', 'Lentilha'];
  String seedSelected = '';

  String temperaturaIdeal = '';
  String umidadeIdeal = '';
  String luminosidadeIdeal = '';
  String nitratoIdeal = '';
  String potassioIdeal = '';
  String fosforoIdeal = '';
  String phSoloIdeal = '';

  // void _getSeeds() {
  //   client.getSeeds().then((value) => {
  //         seedSelected = seedList[0],
  //         setState(() {
  //           _getSeedDetail();
  //         })
  //       });
  // }

  void _getSeedDetail() {
    client.getSeedDetails(seedSelected).then((value) => {
          temperaturaIdeal = value.temperaturaIdeal,
          umidadeIdeal = value.umidadeIdeal,
          luminosidadeIdeal = value.luminosidadeIdeal,
          nitratoIdeal = value.nitratoIdeal,
          potassioIdeal = value.potassioIdeal,
          fosforoIdeal = value.fosforoIdeal,
          phSoloIdeal = value.phSoloIdeal,
          setState(() {})
        });
  }

  void _updateSeedSelected() {
    client.updateSeed(seedSelected).then((value) => {
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Definições do esp32 atualizadas!'),
        ));
      })
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text("Configurações"),
        ),
        body: Container(
          child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 32, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text('Selecione a semente',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  DropdownButton<String>(
                    isExpanded: true,
                    value: seedSelected,
                    icon: const Icon(Icons.arrow_downward),
                    elevation: 16,
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 1,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        seedSelected = value!;
                      });
                    },
                    items:
                        seedList.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  DefaultText(data: 'Temperatura ideal: $temperaturaIdealº'),
                  DefaultText(data: 'Umidade ideal: $umidadeIdeal%'),
                  DefaultText(data: 'Luminosidade ideal: $luminosidadeIdeal'),
                  DefaultText(data: 'Nitrato ideal: ${nitratoIdeal}mg/kg'),
                  DefaultText(data: 'Fósforo ideal: ${fosforoIdeal}mg/kg'),
                  DefaultText(data: 'Potássio ideal: ${potassioIdeal}mg/kg'),
                  DefaultText(data: 'PH do solo ideal: $phSoloIdeal'),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 80, left: 16, right: 16),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50), // NEW
                        ),
                        onPressed: () => { _updateSeedSelected() },
                        child: const Text('Aplicar alterações')),
                  )
                ],
              )),
        ));
  }
}
