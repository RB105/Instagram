import 'package:flutter/material.dart';
import 'package:instagram/extension/build_context_ext.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> likes = [];

  @override
  void initState() {
    likes = List.generate(100, (index) => false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Instagram"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: context.height * 0.015),
        child: ListView.builder(
          itemCount: likes.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: context.width * 0.02),
              child: SizedBox(
                height: context.height * 0.5,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      height: context.height * 0.4,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://source.unsplash.com/random/?$index"),
                              fit: BoxFit.fill)),
                    ),
                    SizedBox(
                      height: context.height * 0.1,
                      width: double.infinity,
                      child: ListTile(
                          leading: likes[index]
                              ? IconButton(
                                  onPressed: () {
                                    favorite(index);
                                  },
                                  icon: const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ))
                              : IconButton(
                                  onPressed: () {
                                    favorite(index);
                                  },
                                  icon: const Icon(Icons.favorite_border))),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void favorite(int index) {
    if (likes[index]) {
      likes[index] = !likes[index];
    } else {
      likes[index] = !likes[index];
    }
    setState(() {});
  }
}
