import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:rick_and_morty/app/services/CharacterService.dart';

import '../models/CharacterModel.dart';

class CharacterController extends GetxController {

  CharacterService characterService = CharacterService();
  var isLoading = false.obs;
  List<CharacterModel> character = <CharacterModel>[].obs;

  static CharacterController get characterSpotController => Get.find();

  Future<dynamic> listCharacter()  async {
    isLoading.value = true;
    var list = await characterService.fetchListCharacter();
    character.addAll(list);
    isLoading.value = false;
    update();
    return character;
  }



}
