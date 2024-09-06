import 'package:dark_lite_mode/views/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/data.dart';
import '../models/model.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Lite modLigt = Lite(Light: "شغل النور ");

  Dark medDark = Dark(dark: "طفي النور");
  bool mode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: IconButton(
              onPressed: () {
                BlocProvider.of<Data_Cubet>(context).change_Method_Mode();
                setState(() {
                  mode = !mode;
                });
              },
              icon: Icon(Icons.dark_mode))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            mode ? modLigt.Light : medDark.dark,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.transit_enterexit_rounded))),
          Text(
            mode ? "😂 هي ضلمت كدي لي " : " اللة يبارك لك يبني ",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
