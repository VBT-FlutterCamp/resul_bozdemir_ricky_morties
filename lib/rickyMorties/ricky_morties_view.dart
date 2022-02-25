import 'package:dio_homework/rickyMorties/ricky_morties_view_model.dart';
import 'package:flutter/material.dart';

class RickymortiesView extends RickymortiesViewModel {
  final String nullImage =
      "https://rickandmortyapi.com/api/character/avatar/1.jpeg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          fetchAllData();
        },
      ),
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(models[index].image ?? nullImage),
            ),
            title: Text(models[index].name ?? ""),
            subtitle: Text("Episode: ${models[index].episode ?? "Null value"}"),
          );
        },
      ),
    );
  }
}
