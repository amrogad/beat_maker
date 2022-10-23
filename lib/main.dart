import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/providers/icon_provider.dart';
import 'package:untitled/providers/sound_provider.dart';
import 'package:untitled/screens/home_screen.dart';
import 'package:untitled/screens/settings_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<SoundProvider>(create: (_) => SoundProvider(),
    ),
    ChangeNotifierProvider<IconProvider>(create: (_) => IconProvider(),
    ),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lime),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SettingsScreen.routeName: (context) => SettingsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
