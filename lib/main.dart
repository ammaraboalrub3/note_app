import 'package:flutter/material.dart';
import 'package:note_application/view/note_body_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        NoteBodyView.id: (context) => const NoteBodyView(),
      },
      initialRoute: NoteBodyView.id,
    );
  }
}
