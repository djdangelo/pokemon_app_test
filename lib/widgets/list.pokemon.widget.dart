import 'package:flutter/material.dart';
import 'package:pokemon_app_test/widgets/pokemon.card.widget.dart';

class ListPokemonWidget extends StatelessWidget {
  const ListPokemonWidget({super.key, required this.listData});
  final listData;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: listData.length,
        itemBuilder: (context, index) {
          return PokemonCardWidget(
            name: listData[index].name,
            url: listData[index].url,
            index: index,
          );
        });
  }
}
