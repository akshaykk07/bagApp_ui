import 'package:flutter/material.dart';

class img extends StatelessWidget {
  final String image;
  const img({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        child: Image.asset(
         image,
          fit: BoxFit.cover,
          height: 300,
          width: 250,
        ),
      ),
    );
  }
}
