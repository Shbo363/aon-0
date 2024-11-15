import 'package:get/get.dart';
class PhoneController extends GetxController {
  var countryCode = '+1'.obs;
  var phoneNumber = ''.obs;
  var isButtonEnabled = false.obs;


  void validatePhoneNumber() {

    if (phoneNumber.value.length == 11) {
      isButtonEnabled.value = true;
    } else {
      isButtonEnabled.value = false;
    }
  }
}
