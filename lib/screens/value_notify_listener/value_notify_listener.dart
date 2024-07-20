import 'package:flutter/material.dart';

class ValueNotifyListener extends StatelessWidget {
  ValueNotifyListener({super.key});
  static String id = 'ValueNotifyListener';
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);
  final ValueNotifier<bool> toggle = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ValueListenableBuilder(
              valueListenable: toggle,
              builder: (context, value, child) {
                return TextFormField(
                  obscureText: toggle.value,
                  decoration: InputDecoration(
                      suffix: InkWell(
                          onTap: () {
                            toggle.value = !toggle.value;
                          },
                          child: toggle.value
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off))),
                );
              }),
          ValueListenableBuilder(
            valueListenable: _counter,
            builder: (context, value, child) {
              return Text(
                _counter.value.toString(),
                style: const TextStyle(fontSize: 60, color: Colors.redAccent),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter.value++;
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
