import 'package:flutter/material.dart';
import 'package:my_todo_app/features/task/presentation/manager/task_provider.dart';
import 'package:provider/provider.dart';

class MyTaskPage extends StatefulWidget {
  const MyTaskPage({super.key});

  @override
  State<MyTaskPage> createState() => _MyTaskPageState();
}

class _MyTaskPageState extends State<MyTaskPage> {
  TaskProvider? _taskProvider;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, provider, _) {
        _taskProvider ??= provider;

        return provider.tasks.isEmpty
            ? const Text(
                'No Task created',
                style: TextStyle(color: Colors.black),
              )
            : Expanded(
                child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(provider.tasks[index].title),
                      visualDensity: const VisualDensity(vertical: -3),
                      leading: Transform.scale(
                        scale: 1.3,
                        child: Checkbox(
                            value: isChecked,
                            shape: const CircleBorder(),
                            onChanged: (value) {
                              setState(() {
                                isChecked = value!;
                              });
                            }),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 0,
                    );
                  },
                  itemCount: provider.tasks.length,
                ),
              );
      },

      // children: [
      //   ListTile(
      //     title: Text(
      //       "Go to market",
      //       style: TextStyle(
      //           decoration: isChecked ? TextDecoration.lineThrough : null),
      //     ),
      //     leading: Checkbox(
      //       shape: const CircleBorder(),
      //       onChanged: (value) {
      //         setState(() {
      //           isChecked = value!;
      //         });
      //       },
      //       value: isChecked,
      //     ),

      //     trailing: const Icon(
      //       Icons.star_border,
      //       color: Colors.blue,
      //     ),
      //   )
      // ],
    );
  }
}
