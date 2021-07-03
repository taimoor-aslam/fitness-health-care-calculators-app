import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SwitchButton extends StatefulWidget {
  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool isSwitched=true;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.8,
      child: FlutterSwitch(
        toggleSize: 20,
        value: isSwitched,
        borderRadius: 30,
        padding: 8,
        onToggle: (val){
          setState(() {
            this.isSwitched=val;
          });
        },
      ),
    );
  }
}
