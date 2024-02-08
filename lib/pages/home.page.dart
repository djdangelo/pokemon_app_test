import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_app_test/controllers/controllers.dart';
import 'package:pokemon_app_test/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    double appheight = MediaQuery.of(context).size.height;
    double appwith = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon-App', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 3,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        padding: EdgeInsets.only(
            top: appheight * 0.02,
            left: appheight * 0.01,
            right: appheight * 0.01),
        child: Column(
          children: [
            Obx(() => (homeController.listPokemon.isEmpty)
                ? Center(
                    heightFactor: 5.0,
                    child: homeController.showSpinner.isTrue
                        ? const LoadingWidget()
                        : const Text('No hay datos'),
                  )
                : ListPokemonWidget(listData: homeController.listPokemon)),

            //PokemonCardWidget(),
            //LoadingWidget(),
            //ErrorMessageWidget()
          ],
        ),
      ),
    );
  }
}
