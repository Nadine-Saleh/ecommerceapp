import 'package:flutter/material.dart';

class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("desktop"),
      ),
      backgroundColor: Colors.green,
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 19 / 6,
                    child: Container(
                      width: 220,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 120,
                            color: Colors.lightBlue,
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
          Container(
            width: 200,
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}
