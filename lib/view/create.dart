import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_dealer/view/input_ingredient.dart';

class Create extends StatefulWidget {
  @override
  CreateState createState() {
    return CreateState();
  }
}

class CreateState extends State<Create> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: const Text('Sample Code'),
        ),
        child: Center(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
          Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.always,
              onChanged: () {},
              child: CupertinoFormSection(
                  header: const Text("Create Recipe"),
                  children: [
                    CupertinoTextFormFieldRow(
                      prefix: const Text("Name"),
                      onFieldSubmitted: (value) {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(context, CupertinoPageRoute(
                            builder: (_) {
                              return InputIngredient();
                            },
                          ));
                        }
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ]))
        ])));
  }
}
