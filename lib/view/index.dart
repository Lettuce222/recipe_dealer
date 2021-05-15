import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_dealer/view/create.dart';

class Index extends StatefulWidget {
  @override
  IndexState createState() {
    return IndexState();
  }
}

class IndexState extends State<Index> {
  final recipes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Recipes'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(CupertinoIcons.add),
        onPressed: () {
          Navigator.push(context, CupertinoPageRoute(
            builder: (_) {
              return Create();
            },
          ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
