import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddTaskSheet extends StatelessWidget {
  const AddTaskSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFF757575),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Column(
          children: [
             const TextField(
              autofocus: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(hintText: ("New Task")),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.bars)),
                IconButton(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.calendarCheck)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.star_border))
              ],
            ),
            Text("Save")
          ],
        ),
      ),
    );
  }
}
