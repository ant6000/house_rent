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
      ownerName: json['OwnerName'],
      location: json['Location'],
      price: json['Price'],
      bed: json['Bed'],
      bath: json['Bath'],
      kitchen: json['Kitchen']);
}



class Images {
  ImageAttributes? imageAttributes;
  Images({this.imageAttributes});
  factory Images.fromJson(Map<String, dynamic>json)=>Images(imageAttributes: ImageAttributes.fromJson(json['attributes']));
}

class ImageAttributes {
  String? url;
  ImageAttributes({required this.url});
  factory ImageAttributes.fromJson(Map<String, dynamic> json) =>
      ImageAttributes(url: json['url']);
}
// class Images {
//   ImagesData? data; 
//   Images({this.data});
//   factory Images.fromJson(Map<String, dynamic> json) => Images(data: json['data']);
// }

// class ImagesData {
//   int? id;
//   ImageAttributes? attributes;
//   ImagesData({this.id, this.attributes});
//   factory ImagesData.fromjson(Map<String, dynamic> json) =>
//       ImagesData(id: json['id'], attributes: ImageAttributes.fomjson(json['attributes']));
// }

// class ImageAttributes {
//   String? name;
//   dynamic alternativeText;
//   Formats? formats;
//   double? size;
//   String? url;
//   ImageAttributes(
//       {this.name, this.alternativeText, this.formats, this.size, this.url});
//   factory ImageAttributes.fomjson(Map<String, dynamic> json) => ImageAttributes(
//       name: json['name'],
//       alternativeText: json['alternativeText'],
//       formats: json['formats'],
//       size: json['size'],
//       url: json['url']);
// }

// class Formats {
//   Size? large;
//   Formats({this.large});
//   factory Formats.fromjson(Map<String, dynamic> json) => Formats(
//         large: json['large'],
//       );
// }

// class Size {
//   String? name;
//   int? width;
//   int? height;
//   String? url;
//   Size({this.name, this.width, this.height, this.url});
//   factory Size.fromjson(Map<String, dynamic> json) => Size(
//         name: json['name'],
//         height: json['height'],
//         width: json['width'],
//         url: json['url'],
//       );
// }
