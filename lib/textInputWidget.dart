import 'package:flutter/material.dart';

class TextInputWidget extends StatefulWidget {
  final Function(String) callback;

  TextInputWidget(this.callback);

  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();

  @override
  void dispose() {
    super.dispose(); // For cleaning up the object
    controller.dispose();
  }

  void click() {
    FocusScope.of(context).unfocus();
    widget.callback(controller.text);
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return
      TextField(
          controller: this.controller,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.message),
              labelText: "Type a message:",
              suffixIcon: IconButton(
                icon: Icon(Icons.send),
                splashColor: Colors.blue,
                tooltip: "Send message",
                onPressed: this.click,
              )
          )
      );
  }
}