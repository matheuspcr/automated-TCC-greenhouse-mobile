import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Menu"),
    ),
    body: Center(
      child: Padding(
          padding: const EdgeInsets.only(top: 44),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50), // NEW
                    ),
                    onPressed: () => { Navigator.pushNamed(context, '/dashboard') },
                    child: const Text('Dashboard')),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50), // NEW
                    ),
                    onPressed: () => { Navigator.pushNamed(context, '/controller') },
                    child: const Text('Controle')),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50), // NEW
                    ),
                    onPressed: () => { Navigator.pushNamed(context, '/chart') },
                    child: const Text('Gráficos')),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50), // NEW
                    ),
                    onPressed: () => { Navigator.pushNamed(context, '/') },
                    child: const Text('Configurações')),
              )
            ],
          )),
    ));
  }
}
