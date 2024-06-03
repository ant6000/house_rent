import 'dart:convert';
import 'package:get/get.dart';
import 'package:house_rent/data/model/house_model.dart';
import 'package:house_rent/data/repository/getNearests_house.dart';
import 'package:house_rent/data/model/custom_model.dart';

class NearestHoueController extends GetxController {
  //RxList<HouseModelDatum> nearestHouses = RxList<HouseModelDatum>();
  RxList<CustomModel> houseList = RxList<CustomModel>();

  @override
  void onInit() {
    getNearestHouses();
    super.onInit();
  }

  void getNearestHouses() async {
    var result = await GetnearestsHouse.getHouses();
    dynamic response = jsonDecode(result.body);

    if (response['data'] != null) {
      var houses = response['data'] as List;
      for (var house in houses) {
        houseList.add(CustomModel.fromJson(house));
      }
    }
    print(houseList);
  }
}
