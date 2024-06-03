
class CustomModel {
  int? id;
  Attributes? attributes;
  CustomModel({this.id, this.attributes});

  factory CustomModel.fromJson(Map<String, dynamic> json) => CustomModel(
    id: json['id'],
    attributes: json['attributes'] != null ? Attributes.fromJson(json['attributes']) : null,
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

  Attributes(
      {this.houseTitle,
      this.ownerPhone,
      this.ownerName,
      this.bath,
      this.bed,
      this.kitchen,
      this.location,
      this.price});
  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
      houseTitle: json['HouseTitle'],
      ownerPhone: json['OwnerPhone'],
      ownerName: json['Location'],
      location: json['OwnerName'],
      price: json['Price'],
      bed: json['Bed'],
      bath: json['Bath'],
      kitchen: json['Kitchen']);
}
