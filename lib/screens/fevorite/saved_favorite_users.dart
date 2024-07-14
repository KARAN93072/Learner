import 'package:flutter/material.dart';
import 'package:learner/screens/fevorite/favorite_provider.dart';
import 'package:provider/provider.dart';

class SavedFavoriteUsers extends StatelessWidget {
  const SavedFavoriteUsers({super.key});
  static String id = 'SavedFevouriteUsers';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Consumer<FavoriteProvider>(
          builder: (context, value, chail) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${value.savedUsers[index]}'),
                );
              },
              itemCount: value.savedUsers.length,
            );
          },
        ),
      ),
    );
  }
}
