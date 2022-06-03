import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:memento/domain/model/taskmodel.dart';

import 'package:memento/presentaion/resources/sizeconfig.dart';

class AddTask extends ConsumerStatefulWidget {
  @override
  ConsumerState<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends ConsumerState<AddTask> {
  TextEditingController textEditingController = TextEditingController();
  TextEditingController noteEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final products = ref.read(todolistprovider.notifier).hasListeners;
    SizeConfig().init(context);
    String? textfield;
    String? notefield;
    return Container(
      height: getProportionateScreenHeight(270),
      width: getProportionateScreenWidth(70),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              onChanged: (newvalue) {
                textfield = newvalue;
              },
              controller: textEditingController,
              autofocus: true,
              cursorColor: Colors.amberAccent,
              decoration: const InputDecoration(
                hintText: "I'm doing...",
                border: InputBorder.none,
              ),
            ),
            TextFormField(
              onFieldSubmitted: (value) {
                ref.read(todolistprovider.notifier).addtask(value);
              },
              onChanged: (newvalue) {
                notefield = newvalue;
              },
              controller: noteEditingController,
              decoration: const InputDecoration(
                hintText: "Note...",
                border: InputBorder.none,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.note_add_outlined,
                  color: Colors.grey,
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  child: const Icon(
                    Icons.circle_outlined,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                ref.read(todolistprovider.notifier).addtask(textfield!);
                Navigator.pop(context);
              },
              child: const Text("Add Task"),
            )
          ],
        ),
      ),
    );
  }
}
