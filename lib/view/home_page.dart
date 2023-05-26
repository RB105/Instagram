import 'package:flutter/material.dart';
import 'package:instagram/extension/build_context_ext.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Instagram"),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Container(
          height: context.height * 0.3,
          width:  double.infinity,
        );
      },),
    );
  }
}