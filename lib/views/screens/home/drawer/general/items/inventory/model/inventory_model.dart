
import 'dart:convert';
//
// InventoryModel inventoryModelFromJson(String str) => InventoryModel.fromJson(json.decode(str));
//
// String inventoryModelToJson(InventoryModel data) => json.encode(data.toJson());

class InventoryModel {
  String message;
  List<Inventory> inventory;

  InventoryModel({
    required this.message,
    required this.inventory,
  });

  factory InventoryModel.fromMap({required Map data}) => InventoryModel(
    message: data["message"],
    inventory: List<Inventory>.from(data["inventory"].map((x) => Inventory.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "inventory": List<dynamic>.from(inventory.map((x) => x.toJson())),
  };
}

class Inventory {
  String id;
  String itemname;
  int itemcode;
  int stokeqty;
  int sellingprice;
  int purchaseprice;
  int mrp;
  int wholesaleprice;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  Inventory({
    required this.id,
    required this.itemname,
    required this.itemcode,
    required this.stokeqty,
    required this.sellingprice,
    required this.purchaseprice,
    required this.mrp,
    required this.wholesaleprice,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory Inventory.fromJson(Map<String, dynamic> json) => Inventory(
    id: json["_id"],
    itemname: json["itemname"],
    itemcode: json["itemcode"],
    stokeqty: json["stokeqty"],
    sellingprice: json["sellingprice"],
    purchaseprice: json["purchaseprice"],
    mrp: json["mrp"],
    wholesaleprice: json["wholesaleprice"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "itemname": itemname,
    "itemcode": itemcode,
    "stokeqty": stokeqty,
    "sellingprice": sellingprice,
    "purchaseprice": purchaseprice,
    "mrp": mrp,
    "wholesaleprice": wholesaleprice,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "__v": v,
  };
}
