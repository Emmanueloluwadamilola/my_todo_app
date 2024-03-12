import 'package:flutter/material.dart';

class MyTaskPage extends StatefulWidget {
  const MyTaskPage({super.key});

  @override
  State<MyTaskPage> createState() => _MyTaskPageState();
}

class _MyTaskPageState extends State<MyTaskPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          ListTile(
            title: Text(
              "Go to market",
              // style: TextStyle(
              //     decoration: isChecked ? TextDecoration.lineThrough : null),
            ),
            // leading: CircularCheckBox(
            //   boxState: isChecked,
            //   toggleCheckBox: (newValue) {
            //     setState(() {
            //       isChecked = newValue!;
            //     });
            //   },
            // ),
            trailing: const Icon(
              Icons.star_border,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}

class CircularCheckBox extends StatelessWidget {
  final bool boxState;
  final Function toggleCheckBox;
  const CircularCheckBox(
      {super.key, required this.boxState, required this.toggleCheckBox});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: boxState,
      shape: const CircleBorder(),
      onChanged: toggleCheckBox(),
    );
  }
}
