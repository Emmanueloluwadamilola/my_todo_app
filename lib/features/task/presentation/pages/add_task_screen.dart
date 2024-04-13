import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_todo_app/features/task/presentation/manager/task_provider.dart';
import 'package:provider/provider.dart';

class AddTaskSheet extends StatelessWidget {
  const AddTaskSheet({super.key});

  @override
  Widget build(BuildContext context) {
    TaskProvider? _provider;
    return Container(
      color: const Color(0XFF757575),
      child: Consumer<TaskProvider>(
        builder: ( context, provider, _) {
          _provider ??= provider;
          return Container(
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
                  const Padding(
                    padding: EdgeInsets.only(left: 7),
                    child: TextField(
                      autofocus: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: ("New Task")),
                    ),
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
                    const Spacer(),
                     Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: InkWell(
                        onTap: () {
                          
                        },
                        child: const Text(
                          "Save",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
