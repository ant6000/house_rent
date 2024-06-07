
class CustomModel {
  int? id;
  Attributes? attributes;
  CustomModel({this.id, this.attributes});

  factory CustomModel.fromJson(Map<String, dynamic> json) => CustomModel(
        id: json['id'],
        attributes: json['attributes'] != null
            ? Attributes.fromJson(json['attributes'])
            : null,
      );
}

class Attributes {
  String? houseTitle;
  int? ownerPhone;
  String? location;
  int? price;
  String? ownerName;
  int? bed;
  int? bath;
  int? kitchen;
  Images? images;
  Attributes(
      {this.houseTitle,
      this.ownerPhone,
      this.ownerName,
      this.bath,
      this.bed,
      this.kitchen,
      this.location,
      this.price,
      this.images});
  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
      houseTitle: json['HouseTitle'],
      ownerPhone: json['OwnerPhone'],
      ownerName: json['OwnerName'],
      location: json['Location'],
      price: json['Price'],
      bed: json['Bed'],
      bath: json['Bath'],
      kitchen: json['Kitchen'],
      images: Images.fromJson(json['Images']));
}


class Images {
  List<ImagesData>? data;
  Images({this.data});
  factory Images.fromJson(Map<String, dynamic> json) => Images(
      data: List<ImagesData>.from(
          json['data'].map((x) => ImagesData.fromjson(x))));
}

class ImagesData {
  int? id;
  ImageAttribute? attributes;
  ImagesData({this.id, this.attributes});
  factory ImagesData.fromjson(Map<String, dynamic> json) => ImagesData(
      id: json['id'], attributes: ImageAttribute.fomjson(json['attributes']));
}

class ImageAttribute {
  String? url;
  ImageAttribute({this.url});
  factory ImageAttribute.fomjson(Map<String, dynamic> json) =>
      ImageAttribute(url: json['url']);
}
