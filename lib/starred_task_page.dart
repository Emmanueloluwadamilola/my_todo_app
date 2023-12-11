import 'package:flutter/material.dart';

class StarredTaskPage extends StatefulWidget {
  const StarredTaskPage({super.key});

  @override
  State<StarredTaskPage> createState() => _StarredTaskPageState();
}

class _StarredTaskPageState extends State<StarredTaskPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Starred Task"));
  }
}