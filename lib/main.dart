import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  List<String> names = ['Dan Roberto', 'Super Mario', 'Rodrigo Duterte'];

  String _countLetters (String name){
    int count = 0;
    String finalname = '';

    count = name.length;
    finalname = count.toString();
    return finalname;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: darkBlue,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('ListView Builder'),
            backgroundColor: Colors.blue,
            leading: const Icon(
              Icons.ac_unit,
              color: Colors.cyan,
              size: 30.0,
            ),

          ),
          body:
          ListView.builder(
              itemCount: names.length,
              itemBuilder: (context,index){
                return ListTile(
                  leading: const Icon(
                    Icons.account_circle_outlined,
                    color: Colors.grey,
                    size: 30.0,
                  ),
                  title: Text(names[index]),
                  subtitle: Text(_countLetters(names[index])),
                );
              }
          ),
        )
    );
  }
}
