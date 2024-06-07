import 'dart:convert';
import 'package:get/get.dart';
import 'package:house_rent/data/repository/getNearests_house.dart';
import 'package:house_rent/data/model/custom_model.dart';

class NearestHoueController extends GetxController {
  RxList<CustomModel> houseList = RxList<CustomModel>();
  RxList<String> images = RxList<String>();

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
        var link = house['attributes']['Images']['data'];
        for (var url in link) {
          String imageUrl = url['attributes']['url'];
          images.add('http://192.168.185.124:1337$imageUrl');
          break;
        }
      }
    }
  }
}
