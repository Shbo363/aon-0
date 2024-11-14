import 'package:get/get.dart';

class SelectionController extends GetxController {
  // Observable selected option
  var selectedOption = Rxn<int>();

  // Check if any option is selected
  bool get isOptionSelected => selectedOption.value != null;

  // Method to update selected option
  void selectOption(int index) {
    selectedOption.value = index;
  }
}

