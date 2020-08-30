import 'package:animated_float_action_button/animated_floating_action_button.dart';
import 'package:flutter/material.dart';

class ExamplePage extends StatefulWidget {
  ExamplePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  Widget add() {
    return FloatActionButtonText(
      onPressed: null,
      icon: Icons.add,
      text: "Add",
    );
  }

  Widget image() {
    return FloatActionButtonText(
      onPressed: null,
      icon: Icons.image,
      text: "Image",
    );
  }

  Widget inbox() {
    return FloatActionButtonText(
      onPressed: null,
      icon: Icons.inbox,
      text: "Inbox",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(),
      floatingActionButton: AnimatedFloatingActionButton(
        fabButtons: <Widget>[
          add(),
          image(),
          inbox(),
        ],
        colorStartAnimation: Colors.blue,
        colorEndAnimation: Colors.red,
        animatedIconData: AnimatedIcons.menu_close,
      ),
    );
  }
}