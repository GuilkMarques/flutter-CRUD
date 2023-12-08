import 'package:flutter/material.dart';
import 'package:flutter_crud/components/user-tile.dart';
import 'package:flutter_crud/provider/users.dart';
import 'package:flutter_crud/routes/app-routes.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Usuários'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {Navigator.of(context).pushNamed(AppRoutes.USER_FORM);},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
      ),
    );
  }
}
