import 'package:get/get.dart';
import 'package:pokemon_app_test/models/models.dart';
import 'package:pokemon_app_test/services/services.dart';

class HomeController extends GetxController {
  PokemonsService pokemonsService = PokemonsService();

  var listPokemon = [].obs;
  var showLoading = false.obs;
  var showSpinner = false.obs;

  getPokemons(int limit, int offset) async {
    showSpinner.value = true;
    var response = await pokemonsService.getPokemons(limit, offset);
    if (response['results'] != null) {
      for (var i = 0; i < response['results'].length; i++) {
        listPokemon.add(Result.fromJson(response['results'][i]));
      }
    } else {
      showSpinner.value = false;
      Get.offAllNamed('/error');
    }
  }

  @override
  void onInit() async {
    // TODO: implement onInit
    await getPokemons(10, 0);
    super.onInit();
  }
}
