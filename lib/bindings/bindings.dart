import 'package:get/get.dart';
import 'package:house_rent/controller/category_controller.dart';
import 'package:house_rent/controller/nearest_houe_controller.dart';
class CategoryBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(CategoryController());
    Get.put(NearestHoueController());
  }
}
