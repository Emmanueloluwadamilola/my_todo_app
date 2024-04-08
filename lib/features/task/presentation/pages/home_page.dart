import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_todo_app/features/task/presentation/manager/task_provider.dart';
import 'package:my_todo_app/features/task/presentation/pages/add_task_screen.dart';
import 'package:my_todo_app/features/task/presentation/pages/starred_task_page.dart';
import 'package:my_todo_app/features/task/presentation/pages/task_list_page.dart';
import 'package:provider/provider.dart';

enum Screen { starredTask, allTask }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget showSheet(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: const AddTaskSheet(),
      ),
    );
  }

  TaskProvider? _provider;
  Screen selectedScreen = Screen.allTask;
  bool showScreen = true;

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(builder: (context, provider, _) {
      _provider ??= provider;
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Tasks",
            style: TextStyle(color: Colors.black, fontSize: 27),
          ),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: CircleAvatar(),
            )
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: (selectedScreen == Screen.starredTask)
                          ? const BorderSide(width: 2, color: Colors.blue)
                          : const BorderSide(width: 0, color: Colors.white),
                    ),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.only(top: 5.0, bottom: 5),
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              selectedScreen = Screen.starredTask;
                              showScreen = false;
                            });
                          },
                          icon: Icon(Icons.star,
                              color: (selectedScreen == Screen.starredTask)
                                  ? Colors.blue
                                  : Colors.black))),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: (selectedScreen == Screen.allTask)
                          ? const BorderSide(width: 2, color: Colors.blue)
                          : const BorderSide(width: 0, color: Colors.white),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        selectedScreen = Screen.allTask;
                        showScreen = true;
                      });
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(top: 5.0, bottom: 5),
                      child: Text(
                        "My Tasks",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    label: const Text(
                      "New list",
                      style: TextStyle(fontSize: 16),
                    ))
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            showScreen ? const MyTaskPage() : const StarredTaskPage(),
          ],
        ),
        floatingActionButton: SizedBox(
          height: 70,
          child: FittedBox(
            child: FloatingActionButton(
              shape: const CircleBorder(),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: showSheet);
              },
              child: const Icon(
                Icons.add,
                size: 40,
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            height: 95,
            shape: const CircularNotchedRectangle(),
            notchMargin: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.bars,
                        size: 20,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        size: 35,
                      )),
                )
              ],
            )),
      );
    },);
  }
}
