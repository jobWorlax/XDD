import 'package:flutter/material.dart';

final Color? cardNoramlColor = Colors.deepOrange[400];

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Row(
              children: [
                XDCard(cardNoramlColor),
                XDCard(cardNoramlColor),
              ],
            ),
          ),
          XDCard(cardNoramlColor),
          Expanded(
            child: Row(
              children: [
                XDCard(cardNoramlColor),
                XDCard(cardNoramlColor),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.rocket_launch),
        onPressed: () => print("XD"),
      ),
    );
  }
}

class XDCard extends StatelessWidget {
  Color? color;

  XDCard(this.color);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
      ),
    );
  }
}

class XDGender extends StatelessWidget {
  String text;
  Icon icon;

  XDGender(this.text, this.icon);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [icon, Text(text)],
    );
  }
}
