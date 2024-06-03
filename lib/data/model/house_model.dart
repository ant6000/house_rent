// To parse this JSON data, do
//
//     final houseModel = houseModelFromJson(jsonString);

import 'dart:convert';

HouseModel houseModelFromJson(String str) => HouseModel.fromJson(json.decode(str));

String houseModelToJson(HouseModel data) => json.encode(data.toJson());

class HouseModel {
    List<HouseModelDatum> data;
    Meta meta;

    HouseModel({
        required this.data,
        required this.meta,
    });

    factory HouseModel.fromJson(Map<String, dynamic> json) => HouseModel(
        data: List<HouseModelDatum>.from(json["data"].map((x) => HouseModelDatum.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta.toJson(),
    };
}

class HouseModelDatum {
    int id;
    PurpleAttributes attributes;

    HouseModelDatum({
        required this.id,
        required this.attributes,
    });

    factory HouseModelDatum.fromJson(Map<String, dynamic> json) => HouseModelDatum(
        id: json["id"],
        attributes: PurpleAttributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
    };
}

class PurpleAttributes {
    String houseTitle;
    List<Description> description;
    int ownerPhone;
    String location;
    int price;
    String ownerName;
    int bed;
    int bath;
    int kitchen;
    DateTime createdAt;
    DateTime updatedAt;
    DateTime publishedAt;
    Images images;

    PurpleAttributes({
        required this.houseTitle,
        required this.description,
        required this.ownerPhone,
        required this.location,
        required this.price,
        required this.ownerName,
        required this.bed,
        required this.bath,
        required this.kitchen,
        required this.createdAt,
        required this.updatedAt,
        required this.publishedAt,
        required this.images,
    });

    factory PurpleAttributes.fromJson(Map<String, dynamic> json) => PurpleAttributes(
        houseTitle: json["HouseTitle"],
        description: List<Description>.from(json["Description"].map((x) => Description.fromJson(x))),
        ownerPhone: json["OwnerPhone"],
        location: json["Location"],
        price: json["Price"],
        ownerName: json["OwnerName"],
        bed: json["Bed"],
        bath: json["Bath"],
        kitchen: json["Kitchen"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        images: Images.fromJson(json["Images"]),
    );

    Map<String, dynamic> toJson() => {
        "HouseTitle": houseTitle,
        "Description": List<dynamic>.from(description.map((x) => x.toJson())),
        "OwnerPhone": ownerPhone,
        "Location": location,
        "Price": price,
        "OwnerName": ownerName,
        "Bed": bed,
        "Bath": bath,
        "Kitchen": kitchen,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
        "Images": images.toJson(),
    };
}

class Description {
    DescriptionType type;
    List<Child> children;

    Description({
        required this.type,
        required this.children,
    });

    factory Description.fromJson(Map<String, dynamic> json) => Description(
        type: descriptionTypeValues.map[json["type"]]!,
        children: List<Child>.from(json["children"].map((x) => Child.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "type": descriptionTypeValues.reverse[type],
        "children": List<dynamic>.from(children.map((x) => x.toJson())),
    };
}

class Child {
    ChildType type;
    String text;

    Child({
        required this.type,
        required this.text,
    });

    factory Child.fromJson(Map<String, dynamic> json) => Child(
        type: childTypeValues.map[json["type"]]!,
        text: json["text"],
    );

    Map<String, dynamic> toJson() => {
        "type": childTypeValues.reverse[type],
        "text": text,
    };
}

enum ChildType {
    TEXT
}

final childTypeValues = EnumValues({
    "text": ChildType.TEXT
});

enum DescriptionType {
    PARAGRAPH
}

final descriptionTypeValues = EnumValues({
    "paragraph": DescriptionType.PARAGRAPH
});

class Images {
    List<ImagesDatum> data;

    Images({
        required this.data,
    });

    factory Images.fromJson(Map<String, dynamic> json) => Images(
        data: List<ImagesDatum>.from(json["data"].map((x) => ImagesDatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class ImagesDatum {
    int id;
    FluffyAttributes attributes;

    ImagesDatum({
        required this.id,
        required this.attributes,
    });

    factory ImagesDatum.fromJson(Map<String, dynamic> json) => ImagesDatum(
        id: json["id"],
        attributes: FluffyAttributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
    };
}

class FluffyAttributes {
    String name;
    dynamic alternativeText;
    dynamic caption;
    int width;
    int height;
    Formats formats;
    String hash;
    Ext ext;
    Mime mime;
    double size;
    String url;
    dynamic previewUrl;
    Provider provider;
    dynamic providerMetadata;
    DateTime createdAt;
    DateTime updatedAt;

    FluffyAttributes({
        required this.name,
        required this.alternativeText,
        required this.caption,
        required this.width,
        required this.height,
        required this.formats,
        required this.hash,
        required this.ext,
        required this.mime,
        required this.size,
        required this.url,
        required this.previewUrl,
        required this.provider,
        required this.providerMetadata,
        required this.createdAt,
        required this.updatedAt,
    });

    factory FluffyAttributes.fromJson(Map<String, dynamic> json) => FluffyAttributes(
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats: Formats.fromJson(json["formats"]),
        hash: json["hash"],
        ext: extValues.map[json["ext"]]!,
        mime: mimeValues.map[json["mime"]]!,
        size: json["size"]?.toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: providerValues.map[json["provider"]]!,
        providerMetadata: json["provider_metadata"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "alternativeText": alternativeText,
        "caption": caption,
        "width": width,
        "height": height,
        "formats": formats.toJson(),
        "hash": hash,
        "ext": extValues.reverse[ext],
        "mime": mimeValues.reverse[mime],
        "size": size,
        "url": url,
        "previewUrl": previewUrl,
        "provider": providerValues.reverse[provider],
        "provider_metadata": providerMetadata,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
    };
}

enum Ext {
    JPEG,
    JPG,
    PNG
}

final extValues = EnumValues({
    ".jpeg": Ext.JPEG,
    ".jpg": Ext.JPG,
    ".png": Ext.PNG
});

class Formats {
    Medium thumbnail;
    Medium small;
    Medium medium;
    Medium? large;

    Formats({
        required this.thumbnail,
        required this.small,
        required this.medium,
        this.large,
    });

    factory Formats.fromJson(Map<String, dynamic> json) => Formats(
        thumbnail: Medium.fromJson(json["thumbnail"]),
        small: Medium.fromJson(json["small"]),
        medium: Medium.fromJson(json["medium"]),
        large: json["large"] == null ? null : Medium.fromJson(json["large"]),
    );

    Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail.toJson(),
        "small": small.toJson(),
        "medium": medium.toJson(),
        "large": large?.toJson(),
    };
}

class Medium {
    String name;
    String hash;
    Ext ext;
    Mime mime;
    dynamic path;
    int width;
    int height;
    double size;
    int sizeInBytes;
    String url;

    Medium({
        required this.name,
        required this.hash,
        required this.ext,
        required this.mime,
        required this.path,
        required this.width,
        required this.height,
        required this.size,
        required this.sizeInBytes,
        required this.url,
    });

    factory Medium.fromJson(Map<String, dynamic> json) => Medium(
        name: json["name"],
        hash: json["hash"],
        ext: extValues.map[json["ext"]]!,
        mime: mimeValues.map[json["mime"]]!,
        path: json["path"],
        width: json["width"],
        height: json["height"],
        size: json["size"]?.toDouble(),
        sizeInBytes: json["sizeInBytes"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "hash": hash,
        "ext": extValues.reverse[ext],
        "mime": mimeValues.reverse[mime],
        "path": path,
        "width": width,
        "height": height,
        "size": size,
        "sizeInBytes": sizeInBytes,
        "url": url,
    };
}

enum Mime {
    IMAGE_JPEG,
    IMAGE_PNG
}

final mimeValues = EnumValues({
    "image/jpeg": Mime.IMAGE_JPEG,
    "image/png": Mime.IMAGE_PNG
});

enum Provider {
    LOCAL
}

final providerValues = EnumValues({
    "local": Provider.LOCAL
});

class Meta {
    Pagination pagination;

    Meta({
        required this.pagination,
    });

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        pagination: Pagination.fromJson(json["pagination"]),
    );

    Map<String, dynamic> toJson() => {
        "pagination": pagination.toJson(),
    };
}

class Pagination {
    int page;
    int pageSize;
    int pageCount;
    int total;

    Pagination({
        required this.page,
        required this.pageSize,
        required this.pageCount,
        required this.total,
    });

    factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        page: json["page"],
        pageSize: json["pageSize"],
        pageCount: json["pageCount"],
        total: json["total"],
    );

    Map<String, dynamic> toJson() => {
        "page": page,
        "pageSize": pageSize,
        "pageCount": pageCount,
        "total": total,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
