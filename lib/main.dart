import 'package:flutter/material.dart';
import 'package:to_do_app/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

import 'models/task_data_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TaskData()),
      ],
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ));
  }
}
