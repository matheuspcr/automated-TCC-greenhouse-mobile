import 'package:flutter/material.dart';

class DefaultText extends StatelessWidget {
  final String data;

  const DefaultText({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(top: 16), child: Text(data));
  }
}
