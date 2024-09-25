import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_provider/Provider/student_provider.dart';
import 'package:student_provider/Ui/input_data.dart';

void main() {
  runApp(const MyApp());
}

/// The root widget of the application.

/// This widget is the top of the widget tree and is responsible for
/// providing the [StudentProvider] to the entire app.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// Create a [MaterialApp] and a [ChangeNotifierProvider] to provide the
    /// [StudentProvider] to the entire app.
    return ChangeNotifierProvider<StudentProvider>(
      /// Create a new [StudentProvider] when the app is initialized.
      create: (context) => StudentProvider(),

      /// The child of the [ChangeNotifierProvider] is the [MaterialApp] that
      /// makes up the app.
      child: MaterialApp(
        /// The title of the app is used in the app bar and the task switcher.
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,

        /// The theme of the app is the purple Material 3 theme.
        theme: ThemeData(
          /// The color scheme of the app is a purple theme.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

          /// The app uses Material 3.
          useMaterial3: true,
        ),

        /// The home of the app is the [InputData] widget.
        home: const InputData(),
      ),
    );
  }
}
