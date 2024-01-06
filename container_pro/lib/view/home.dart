import 'package:container_pro/controller/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ContainerProvider>(
        builder: (context, pro, child) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: pro.currentsize,
                width: pro.currentsize,
                color: Colors.teal,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  pro.add();
                },
                child: const Text("Change"))
          ],
        ),
      ),
    );
  }
}
