import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Text Form Field"),
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                child: TextFormField(
                  controller: Controller,
                  maxLines: 5,
                  minLines: 1,
                  maxLength: 100,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      suffixIcon: Icon(Icons.person),
                      // hintText: "Email or phone num",
                      labelText: "Email or phone num",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print(Controller.text);
                },
                child: Text("Click me"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
