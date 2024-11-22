import 'package:get/get.dart';

class SelectionController extends GetxController {
  var selectedOption = Rxn<int>();

  bool get isOptionSelected => selectedOption.value != null;

  void selectOption(int index) {
    selectedOption.value = index;
  }
}
