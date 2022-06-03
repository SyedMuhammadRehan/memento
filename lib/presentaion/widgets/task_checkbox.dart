import 'package:flutter/material.dart';

class TaskCheckbox extends StatelessWidget {
  final bool ischecked;
  final void Function(bool?)? checkboxState;
  const TaskCheckbox({
    Key? key,
    required this.ischecked,
    required this.checkboxState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: ischecked,
      onChanged: checkboxState,
    );
  }
}
