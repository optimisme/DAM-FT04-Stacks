import 'package:flutter/cupertino.dart';
import 'layout_desktop.dart';
import 'layout_mobile.dart';

// Main application widget
class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  AppState createState() => AppState();
}

// Main application state
class AppState extends State<App> {
  // Define the layout to use depending on the screen width
  Widget _setLayout(BuildContext context) {
    // Set different layouts depending on the screen width
    double width = MediaQuery.of(context).size.width;
    if (width >= 600) {
      return const LayoutDesktop(title: "App Desktop Title");
    } else {
      return const LayoutMobile(title: "App Mobile Title");
    }
  }

  // Definir el contingut del widget 'App'
  @override
  Widget build(BuildContext context) {
    // Farem servir la base 'Material'
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: _setLayout(context),
    );
  }
}
