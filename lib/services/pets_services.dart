import "package:adopt_app/models/pet.dart";
import "package:dio/dio.dart";

class PetServices {
  final Dio _dio = Dio();
  String base_url = "https://coded-pets-api-crud.herokuapp.com";
  Future<List<Pet>> getPets() async {
    final response = await _dio.get("$base_url/pets");
    return (response.data as List)
        .map((petjson) => Pet.fromJson(petjson))
        .toList();
  }
}
