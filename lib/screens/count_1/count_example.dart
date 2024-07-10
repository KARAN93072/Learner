import 'package:flutter/material.dart';
import 'package:learner/screens/count_1/count_provider.dart';
import 'package:provider/provider.dart';

class CountExample extends StatelessWidget {
  const CountExample({super.key});
  static String id = 'CountExample';

  @override
  Widget build(BuildContext context) {
    print('build');
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Consumer<CountProvider>(
          builder: (context, value, child) {
            return Text("${value.count}");
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
