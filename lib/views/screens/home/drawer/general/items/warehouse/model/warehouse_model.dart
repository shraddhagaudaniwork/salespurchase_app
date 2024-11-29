
import 'dart:convert';

// WarehouseModel warehouseModelFromJson(String str) => WarehouseModel.fromJson(json.decode(str), data: {});
//
// String warehouseModelToJson(WarehouseModel data) => json.encode(data.toJson());

class WarehouseModel {
  String message;
  List<Godown> godown;

  WarehouseModel({
    required this.message,
    required this.godown,
  });

  factory WarehouseModel.fromMap({required Map<String, dynamic> data}) => WarehouseModel(
    message: data["message"],
    godown: List<Godown>.from(data["godown"].map((x) => Godown.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "godown": List<dynamic>.from(godown.map((x) => x.toJson())),
  };
}

class Godown {
  String id;
  String itemname;
  int itemcode;
  String itembatch;
  int stokeqty;
  int stokevalue;
  int sellingprice;
  Warehouse warehouse;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  Godown({
    required this.id,
    required this.itemname,
    required this.itemcode,
    required this.itembatch,
    required this.stokeqty,
    required this.stokevalue,
    required this.sellingprice,
    required this.warehouse,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory Godown.fromJson(Map<String, dynamic> json) => Godown(
    id: json["_id"],
    itemname: json["itemname"],
    itemcode: json["itemcode"],
    itembatch: json["itembatch"],
    stokeqty: json["stokeqty"],
    stokevalue: json["stokevalue"],
    sellingprice: json["sellingprice"],
    warehouse: Warehouse.fromJson(json["warehouse"]),
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "itemname": itemname,
    "itemcode": itemcode,
    "itembatch": itembatch,
    "stokeqty": stokeqty,
    "stokevalue": stokevalue,
    "sellingprice": sellingprice,
    "warehouse": warehouse.toJson(),
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "__v": v,
  };
}

class Warehouse {
  String id;
  String warehouse;
  int v;

  Warehouse({
    required this.id,
    required this.warehouse,
    required this.v,
  });

  factory Warehouse.fromJson(Map<String, dynamic> json) => Warehouse(
    id: json["_id"],
    warehouse: json["warehouse"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "warehouse": warehouse,
    "__v": v,
  };
}
