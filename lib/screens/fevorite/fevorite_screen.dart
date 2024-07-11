import 'package:flutter/material.dart';
import 'package:learner/screens/fevorite/fevorite_provider.dart';
import 'package:provider/provider.dart';

class FevoriteScreen extends StatelessWidget {
  const FevoriteScreen({super.key});
  static String id = 'FevoriteScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fevorite Screen '),
        actions: [],
      ),
      body: Column(
        children: [
          Expanded(
            child: Consumer<FevoriteProvider>(
              builder: (context, value, state) {
                return ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        // value.setSelectedIndex(index);

                        ///2nd
                        value.newItemIndex(index);
                      },
                      title: Text('Harsh' + index.toString()),
                      subtitle: const Text('9307280042'),
                      trailing: value.itemIndex == 1
                          ? const Icon(Icons.check_box)
                          : const Icon(Icons.check_box_outline_blank_rounded),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
