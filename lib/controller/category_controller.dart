import 'package:get/get.dart';

class CategoryController extends GetxController {
  var selectedIndex = Rxn<int>();

  void onCategorySelected(int index) {
    selectedIndex.value = index;
  }
}
