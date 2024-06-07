import 'package:get/get.dart';
import 'package:house_rent/controller/baner_controller.dart';
import 'package:house_rent/controller/best_for_you_controller.dart';
import 'package:house_rent/controller/category_controller.dart';
import 'package:house_rent/controller/nearest_house_controller.dart';
class CategoryBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(CategoryController());
    Get.put(NearestHoueController());
    Get.put(BestForYouController());
    Get.put(BanerController());
  }
}
