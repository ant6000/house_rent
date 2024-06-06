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
    late List link;
    if (response['data'] != null) {
      var houses = response['data'] as List;
      for (var house in houses) {
        houseList.add(CustomModel.fromJson(house));
        link = house['attributes']['Images']['data'] as List;
      }
      for (var element in link) {
        var urlList = ImageAttributes.fromJson(element['attributes']);
        images.add('http://192.168.185.124:1337${urlList.url}');
      }
    }
  }
}