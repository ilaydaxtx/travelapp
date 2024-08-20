import 'package:flutter/material.dart';
import 'package:travelapp2024/ui/favorites/widget/favorites_list_widget.dart';

class FavoritesView extends StatelessWidget {
  FavoritesView({super.key});
  FavoriteDestinationsList favoriteDestinationsListObj = FavoriteDestinationsList();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          scrollDirection: Axis.horizontal, //TODO: take the list and show the favorited destinations/hotels here
          itemBuilder: (BuildContext context, int index) {
            return ListTile();
          }),
    );
  }
}
