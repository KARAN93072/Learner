import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learner/screens/fevorite/favorite_provider.dart';
import 'package:learner/screens/fevorite/saved_favorite_users.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});
  static String id = 'FavoriteScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Screen '),
        actions: [
          InkWell(
              onTap: () {
                GoRouter.of(context).goNamed(SavedFavoriteUsers.id);
              },
              child: const Text('Saved users'))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Consumer<FavoriteProvider>(
              builder: (context, value, state) {
                return ListView.builder(
                  itemCount: value.listUsers.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        if (value.savedUsers.contains(index)) {
                          value.setUnliked(index);
                        } else {
                          value.setLiked(index);
                        }
                      },
                      title: Text('${value.listUsers[index]}'),
                      subtitle: Text("$index"),
                      trailing: value.savedUsers.contains(index)
                          ? const Icon(Icons.favorite)
                          : Icon(Icons.favorite_outline_rounded),
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
