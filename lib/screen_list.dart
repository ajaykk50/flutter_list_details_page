import 'package:flutter/material.dart';
import 'package:flutter_list_click_details/screen_list_details.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (ctx, index) {
          return ListTile(
            title: Text('Person$index'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                return ListDetails(name: 'Person$index');
              }));
            },
          );
        },
        separatorBuilder: (ctx, index) {
          return Divider();
        },
        itemCount: 50,
      ),
    );
  }
}
