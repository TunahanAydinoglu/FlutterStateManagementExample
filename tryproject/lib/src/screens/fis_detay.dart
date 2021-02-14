import 'package:flutter/material.dart';

class FisDetay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 8),
              child: Container(
                color: index % 2 == 0 ? Colors.red[300] : Colors.green[400],
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Fis No",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      subtitle: Text("00002226"),
                    ),
                    Divider(color: Colors.black),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
