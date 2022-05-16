import 'package:flutter/material.dart';

class ListDetails extends StatelessWidget {
  final String name;
  const ListDetails({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Go Back"),
          )
        ],
      ),
    );
  }
}
