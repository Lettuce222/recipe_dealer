import 'package:flutter/cupertino.dart';

class InputIngredient extends StatefulWidget {
  @override
  InputIngredientState createState() {
    return InputIngredientState();
  }
}

class InputIngredientState extends State<InputIngredient> {
  final _formKey = GlobalKey<FormState>();
  final _amountFocusNode = FocusNode();

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
                        FocusScope.of(context).requestFocus(_amountFocusNode);
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    CupertinoTextFormFieldRow(
                      prefix: const Text("Amount"),
                      onFieldSubmitted: (value) {
                        if (_formKey.currentState!.validate()) {}
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      focusNode: _amountFocusNode,
                    ),
                  ]))
        ])));
  }
}
