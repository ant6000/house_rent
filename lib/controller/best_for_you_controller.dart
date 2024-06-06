import 'dart:convert';
import 'package:get/get.dart';
import 'package:house_rent/data/model/custom_model.dart';
import 'package:house_rent/data/repository/best_for_you.dart';

class BestForYouController extends GetxController {
  RxList<CustomModel> houseList = RxList<CustomModel>();
  RxList<String> images = RxList<String>();
  int index = -1;

  @override
  void onInit() {
    getBestForYouHouses();
    super.onInit();
  }

  void getBestForYouHouses() async {
    var result = await BestForYou.getHouses();
    dynamic response = jsonDecode(result.body);
    //late List link;
    if (response['data'] != null) {
      var houses = response['data'] as List;
      for (var house in houses) {
        houseList.add(CustomModel.fromJson(house));
        //link = house['attributes']['Images']['data'] as List;
      }
      print(houseList);
      // for (var element in link) {
      //   var urlList = ImageAttributes.fromJson(element['attributes']);
      //   print(urlList.url);
      //   images.add('http://192.168.185.124:1337${urlList.url}');
      // }
    }
  }
}
