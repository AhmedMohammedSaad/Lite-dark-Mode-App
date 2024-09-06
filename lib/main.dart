import 'package:dark_lite_mode/views/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/data.dart';
import 'models/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => Data_Cubet(),
        child: BlocBuilder<Data_Cubet, Model_Lite_mode>(
          builder: (context, state) {
            return Builder(builder: (context) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  brightness: Brightness.light,
                  scaffoldBackgroundColor: Colors.white,
                ),
                darkTheme: ThemeData(
                  brightness: Brightness.dark,
                  scaffoldBackgroundColor: Colors.black,
                ),
                themeMode: state is Dark ? ThemeMode.dark : ThemeMode.light,
                home: Home(),
              );
            });
          },
        ));
  }
}
