import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'page/main_page.dart';
import 'option.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PageState()),
        ChangeNotifierProvider(create: (context) => Option())
      ],
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        ),
        home: MainPage(),
      ),
    );
  }
}

class PageState extends ChangeNotifier {
  int pageIndex = 0;

  void changeIndex(int value) {
    pageIndex = value;
    notifyListeners();
  }
}