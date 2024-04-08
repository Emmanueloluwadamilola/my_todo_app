import 'package:flutter/material.dart';
import 'package:my_todo_app/features/task/presentation/manager/task_provider.dart';
import 'package:my_todo_app/features/task/presentation/pages/home_page.dart';
import 'package:provider/provider.dart';
//import 'package:my_todo_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TaskProvider>(create: (_) => TaskProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'To Do App',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
