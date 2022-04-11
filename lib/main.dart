import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_boring_app/features/random_activity/presentation/manager/random_activity_provider.dart';
import 'package:the_boring_app/features/random_activity/presentation/manager/selected_page_provider.dart';
import 'package:the_boring_app/features/random_activity/presentation/pages/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => RandomActivityProvider()),
        ChangeNotifierProvider(create: (context) => SelectedPageProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LandingPage(),
      ),
    );
  }
}


