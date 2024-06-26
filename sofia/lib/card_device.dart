import 'package:bluetooth_classic/models/device.dart';
import 'package:flutter/material.dart';

class CardDevice extends StatelessWidget {
  final Device data;
  final VoidCallback onTap;

  const CardDevice({super.key, required this.data, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: const Color.fromARGB(124, 245, 198, 198),
      child: Card(
        elevation: 2,
        child: ListTile(
          title: Text(data.name ?? ""),
          subtitle: Text(data.address),
        ),
      ),
    );
  }
}