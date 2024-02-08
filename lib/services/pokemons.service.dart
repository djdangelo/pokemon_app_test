import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:pokemon_app_test/constants/contstants.dart';
import 'package:pokemon_app_test/models/models.dart';

class PokemonsService {
  Dio dio = Dio();

  Map<String, String> getHeader() {
    return {
      'Content-Type': 'application/json',
    };
  }

  Future<Map<String, dynamic>> getPokemons(int limit, int offset) async {
    try {
      final response = await dio.get(
          '${VariableGlobalApp.urlApiPokemon}limit=$limit&offset=$offset',
          options: Options(headers: getHeader()));
      final res = PokeApiResponse.fromJson(response.data);
      final res2 = res.toJson();
      return res2;
    } on DioException catch (e) {
      return {"error": true};
    }
  }
}
