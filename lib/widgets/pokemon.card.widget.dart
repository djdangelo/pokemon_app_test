import 'package:flutter/material.dart';
import 'package:pokemon_app_test/constants/variable.global.constant.dart';

class PokemonCardWidget extends StatelessWidget {
  const PokemonCardWidget(
      {super.key, required this.name, required this.url, required this.index});
  final name;
  final url;
  final index;
//#d94256
  @override
  Widget build(BuildContext context) {
    double appheight = MediaQuery.of(context).size.height;
    double appwith = MediaQuery.of(context).size.width;
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: const Color.fromARGB(255, 217, 66, 86),
      elevation: 3.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            bottom: 0, right: 10.0, left: 10.0, top: 10.0),
        child: Center(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
                tag: 'Poke',
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      '${VariableGlobalApp.urlImagePokemon}$index.png'),
                  backgroundColor: Colors.transparent,
                  radius: appheight * 0.04,
                )),
            SizedBox(
              width: appwith * 0.03,
            ),
            SizedBox(
              width: appwith * 0.32,
              child: Text(
                name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: appheight * 0.03,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: appwith * 0.02,
            ),
            SizedBox(
              width: appwith * 0.35,
              height: appheight * 0.1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: appwith * 0.35,
                    child: Text(
                      '#000$index',
                      style: TextStyle(
                          fontSize: appheight * 0.05,
                          color: Colors.white.withOpacity(0.3),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
