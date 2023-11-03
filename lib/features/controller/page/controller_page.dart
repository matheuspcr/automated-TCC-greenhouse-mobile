import 'package:automated_tcc_greenhouse_mobile/entities/request/actuator_change_request.dart';
import 'package:automated_tcc_greenhouse_mobile/helper/rest_client.dart';
import '../../../custom_widgets/default_text.dart';
import '../../../helper/dio_helper.dart';
import 'package:flutter/material.dart';

class ControllerPage extends StatefulWidget {
  const ControllerPage({super.key});

  @override
  State<ControllerPage> createState() => _ControllerPageState();
}

class _ControllerPageState extends State<ControllerPage> {
  final client = RestClient(DioHelper.getDio());
  static const green = Color(0xff5CA450);
  static const red = Color(0xffF54242);

  void _changeActuator(String actuator, String toggle) {
    client
        .toggleActuator(ActuatorChangeRequest(actuator, toggle))
        .then((value) => {setState(() {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(value),
      ));
    })});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Controle"),
        ),
        body: Padding(
            padding: const EdgeInsets.only(left: 16, top: 32, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text("Iluminação",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8, right: 16),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: green,
                              minimumSize: const Size(120, 35)),
                          onPressed: () =>
                              {_changeActuator("iluminacao", "ligar")},
                          child: const Text('Ligar')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 16),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: red,
                              minimumSize: const Size(120, 35)),
                          onPressed: () =>
                              {_changeActuator("iluminacao", "desligar")},
                          child: const Text('Desligar')),
                    ),
                  ],
                ),
                const Padding(
                    padding: EdgeInsets.only(top: 32),
                    child: Text("Rega",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8, right: 16),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: green,
                              minimumSize: const Size(120, 35)),
                          onPressed: () => {_changeActuator("rega", "ligar")},
                          child: const Text('Ligar')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 16),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: red,
                              minimumSize: const Size(120, 35)),
                          onPressed: () =>
                              {_changeActuator("rega", "desligar")},
                          child: const Text('Desligar')),
                    ),
                  ],
                ),
                const Padding(
                    padding: EdgeInsets.only(top: 32),
                    child: Text("Ventilação",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8, right: 16),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: green,
                              minimumSize: const Size(120, 35)),
                          onPressed: () => {_changeActuator("ventilacao", "ligar")},
                          child: const Text('Ligar')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 16),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: red,
                              minimumSize: const Size(120, 35)),
                          onPressed: () =>
                          {_changeActuator("ventilacao", "desligar")},
                          child: const Text('Desligar')),
                    ),
                  ],
                )
              ],
            )));
  }
}
