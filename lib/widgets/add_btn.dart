import 'package:flutter/material.dart';

class Addbtn extends StatelessWidget {
  const Addbtn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 35,
                  width: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey)),
                  child: const Center(
                      child: Text(
                        "-",
                        style: TextStyle(fontSize: 20),
                      )),
                ),
                const SizedBox(
                  width: 3,
                ),
                Container(
                  height: 35,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const Center(
                      child: Text(
                        "01",
                        style: TextStyle(fontSize: 18),
                      )),
                ),
                const SizedBox(
                  width: 3,
                ),
                Container(
                  height: 35,
                  width: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey)),
                  child: const Center(
                      child: Text(
                        "+",
                        style: TextStyle(fontSize: 20),
                      )),
                )
              ],
            ),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.red[400]),
              child: const Icon(
                Icons.favorite,
                color: Colors.white,
                size: 20,
              ),
            )
          ]),
    );
  }
}