import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/items/inventory/inventory_controller.dart';
import 'package:salespurchase_app/widgets/appbar/custom_appbartextwidget.dart';
import 'package:salespurchase_app/widgets/appbar/custom_appbarwidget.dart';
import '../../../../../../../utills/app_colors.dart';

class AddInventory_page extends StatelessWidget {
  const AddInventory_page({super.key});

  @override
  Widget build(BuildContext context) {
    InventoryPostApiController inventoryPostApiController =
        Get.put(InventoryPostApiController());
    return Scaffold(
      appBar: const CustomAppBarWidget(
        title: CustomAppBarTextWidget(text: "Add Inventory Page"),
      ),
      backgroundColor: AppColors.backgroundcolor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: inventoryPostApiController.itemNameController,
              decoration: const InputDecoration(
                labelText: 'Item Name',
              ),
            ),
            TextField(
              controller: inventoryPostApiController.itemCodeController,
              decoration: const InputDecoration(
                labelText: 'Item Code',
              ),
            ),
            TextField(
              controller: inventoryPostApiController.stockQuantityController,
              decoration: const InputDecoration(
                labelText: 'Stock Quantity',
              ),
            ),
            TextField(
              controller: inventoryPostApiController.sellingPriceController,
              decoration: const InputDecoration(
                labelText: 'Selling Price',
              ),
            ),
            TextField(
              controller: inventoryPostApiController.purchasePriceController,
              decoration: const InputDecoration(
                labelText: 'Purchase Price',
              ),
            ),
            TextField(
              controller: inventoryPostApiController.mrpController,
              decoration: const InputDecoration(labelText: '<mrp>'),
            ),
            TextField(
              controller: inventoryPostApiController.wholesalePriceController,
              decoration: const InputDecoration(labelText: 'Wholesale Price'),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(
              () => inventoryPostApiController.isLoading.value
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        if (inventoryPostApiController.itemNameController.text.isEmpty &&
                            inventoryPostApiController
                                .itemCodeController.text.isEmpty &&
                            inventoryPostApiController
                                .stockQuantityController.text.isEmpty &&
                            inventoryPostApiController
                                .sellingPriceController.text.isEmpty &&
                            inventoryPostApiController
                                .purchasePriceController.text.isEmpty &&
                            inventoryPostApiController
                                .wholesalePriceController.text.isEmpty) {
                          Get.snackbar(
                            "Fill",
                            "Please fil this details..",
                          );
                        } else {
                          final inventoryData = {
                            "itemname": inventoryPostApiController
                                .itemNameController.text,
                            "itemcode": inventoryPostApiController
                                .itemCodeController.text,
                            "stokeqty": inventoryPostApiController
                                .stockQuantityController.text,
                            "mrp":
                                inventoryPostApiController.mrpController.text,
                            "sellingprice": inventoryPostApiController
                                .sellingPriceController.text,
                            "purchaseprice": inventoryPostApiController
                                .purchasePriceController.text,
                            "wholesaleprice": inventoryPostApiController
                                .wholesalePriceController.text,
                            // 'description':
                            //     partyPostApiController.descriptionController.text,
                          };
                          print(
                            "Sending Inventory Data: $inventoryData",
                          ); //
                          inventoryPostApiController.createInventory(
                            inventoryData,
                          ); // Debugging
                        }
                      },
                      child: const Text(
                        'Create Inventory',
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
