import 'package:flutter/material.dart';

class Buybtn extends StatelessWidget {
  final Color theam;
  const Buybtn({super.key, required this.theam});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: Row(children: [
        Container(
          height: 50,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              border: Border.all(color: theam)),
          child: Icon(
            Icons.shopping_cart_outlined,
            color: theam,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: theam,
            ),
            child: const Center(
                child: Text(
                  "BUY NOW",
                  style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                )),
          ),
        )
      ]),
    );
  }
}