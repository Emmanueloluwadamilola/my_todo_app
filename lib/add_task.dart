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
              topLeft: Radius.circular(7),
              topRight: Radius.circular(7),
            )),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10, left: 20, top: 7),
          child: Column(
            children: [
              const TextField(
                autofocus: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: ("New Task")),
              ),
              Row(children: [
                IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.bars,
                      color: Colors.blue,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.calendarCheck,
                      color: Colors.blue,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.star_border,
                      size: 35,
                      color: Colors.blue,
                    )),
                const Text(
                  "Save",
                  style: TextStyle(fontSize: 20),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
