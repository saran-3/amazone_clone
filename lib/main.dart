import 'package:amazone_clone/constants/global_variables.dart';
import 'package:amazone_clone/features/auth/screens/auth_screen.dart';
import 'package:amazone_clone/provider/user_provider.dart';
import 'package:amazone_clone/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: 
  [ChangeNotifierProvider(
    create: (context) => 
    UserProvider(),),],child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazone Clone',
      theme: ThemeData(
        //  useMaterial3: true,
       scaffoldBackgroundColor: GlobalVariables.backgroundColor,
       colorScheme: const ColorScheme.light(primary: GlobalVariables.secondaryColor),
       appBarTheme: const AppBarTheme(elevation: 0,
       iconTheme: IconThemeData(color: Colors.black),)
      ),
      onGenerateRoute: ((settings) => generateRoute(settings)) ,

      home:AuthScreen(),
    );
  }
}
