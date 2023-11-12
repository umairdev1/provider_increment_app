import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:increment_app/provider/counter.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    print("render");

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Provider.of<Counter>(context, listen: false).increment();
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text("UmairDev"),
        ),
        body: Center(
          child: Consumer<Counter>(
            builder: (context, counter, child) {
              return Text(
                'Count: ${counter.count}',
                style: TextStyle(fontSize: 24),
              );
            },
          ),
        ));
  }
}
