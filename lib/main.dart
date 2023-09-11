import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.blue),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  mySnackBar(message, context){

    return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message))
   );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        titleSpacing: 50,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 150,
        backgroundColor: Colors.amber,
        actions: [

          IconButton(onPressed: (){mySnackBar("Menu bar will update shortly", context);}, icon: Icon(Icons.menu)),
          IconButton(onPressed: (){mySnackBar("Search function will updtae", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){mySnackBar("seting function will updtae ", context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){mySnackBar("Comments", context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){mySnackBar("mail function will update", context);}, icon: Icon(Icons.email)),

        ],

      ),
     
      //left navigation drawer
    );
  }
}
