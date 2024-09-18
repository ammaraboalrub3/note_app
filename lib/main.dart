import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_application/view/note_body_view.dart';
import 'package:note_application/widget/simple_bloc_observer.dart';

import 'constant.dart';
import 'model/note_model.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(noteBox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      routes: {
        NoteBodyView.id: (context) => const NoteBodyView(),
      },
      initialRoute: NoteBodyView.id,
    );
  }
}
