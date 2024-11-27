import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/items/inventory/widgets/inventory_container.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/items/inventory/widgets/inventory_table.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/items/inventory/widgets/inventory_topheader.dart';

import '../../../../../../../commoncomponent/commontext/commontext.dart';
import '../../../../../../../commoncomponent/container/container.dart';
import '../../../../../../../components/homecomponent/drawer/widgets/drawercomponent.dart';
import '../../../../../../../responsive/sizeconfig.dart';
import '../../../../../../../utills/app_colors.dart';
import '../../../../../../../utills/static_decoration.dart';
import '../../../../../../../widgets/appbar/custom_appbartextwidget.dart';
import '../../../../../../../widgets/appbar/custom_appbarwidget.dart';
import '../../../../../../../widgets/custom_containerwidget.dart';
import '../../../../../../../widgets/custom_textformfieldwidget.dart';
import '../../../../../../../widgets/custom_textwidget.dart';
import '../../../../../../../widgets/table/commontablewidget.dart';
import '../../../../navigation/widgets/bottomnavigationbar_widget.dart';
import '../../../../widgets/floatingactionbutton_widget.dart';
import 'inventory_controller.dart';

class Inventory_page extends StatelessWidget {
  const Inventory_page({super.key});

  @override
  Widget build(BuildContext context) {
    InventoryController inventoryController = Get.put(InventoryController());
    GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
    return Scaffold(
      // key: _scaffoldkey,
      resizeToAvoidBottomInset: false,
      drawer: const DrawerComponents(),
      backgroundColor: AppColors.backgroundcolor,
      appBar: const CustomAppBarWidget(
        title: CustomAppBarTextWidget(text: "Inventory"),
      ),
      body: Obx(() {
        if (inventoryController.allinventorydata.value == null) {
          const Text("No Parties found");
        }

        if (inventoryController.isloading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        // Show user data once loaded
        return ListView.builder(
          itemCount: inventoryController.allinventorydata.value?.inventory.length,
          itemBuilder: (context, i) {
            var user = inventoryController.allinventorydata.value?.inventory[i];
            // return Text("${partyController.alldata.value?.parties[i].receivables}");
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CommonTableWidget(
                title1: "Item Name",
                detail1: user?.itemname,
                title2: "Item Code",
                detail2: user?.itemcode.toString(),
                title3: "Purchase Price",
                detail3: user?.purchaseprice.toString(),
                title4: "Selling Price",
                detail4: user?.sellingprice.toString(),
                title5: "Id",
                detail5: user?.id,
                deleteonpressedbutton: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: const Text("Confirm Delete"),
                      content: const Text(
                        "Are you sure you want to delete this Inventory?",
                      ),
                      actions: [
                        TextButton(
                          child: const Text("Cancel"),
                          onPressed: () => Navigator.of(ctx).pop(),
                        ),
                        TextButton(
                          child: const Text(
                            "Delete",
                            style: TextStyle(color: Colors.red),
                          ),
                          onPressed: () {
                            Navigator.of(ctx).pop(); // Close the dialog
                            // partyController
                            //     .deleteParty(user!.id); // Call delete function
                          },
                        ),
                      ],
                    ),
                  );

                  // partyDeleteApiController.deleteParty(user!.id);

                  // _confirmDelete(context, user!.id,partyController);
                },
                editonpressedbutton: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: const Text("Confirm edit"),
                      content: const Text(
                        "Are you sure you want to edit this Inventory??",
                      ),
                      actions: [
                        Form(
                          // key: _formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Please enter Item name";
                                  }
                                  return null;
                                },
                                // controller:
                                // partyEditApiController.editnameController,
                                decoration:
                                const InputDecoration(hintText: "Item Name"),
                              ),
                              TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Please enter item code";
                                  }
                                  return null;
                                },
                                // controller: partyEditApiController
                                //     .editcompanynameController,
                                decoration: const InputDecoration(
                                    hintText: "Item Code"),
                              ),
                              TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Please item code";
                                  }
                                  return null;
                                },
                                // controller:
                                // partyEditApiController.editemailController,
                                decoration:
                                const InputDecoration(hintText: "Purchase Price"),
                              ),
                              TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Please enter selling price";
                                  }
                                  return null;
                                },
                                // controller: partyEditApiController
                                //     .editreceivablesController,
                                decoration: const InputDecoration(
                                    hintText: "Selling price"),
                              ),

                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                              child: const Text("Cancel"),
                              onPressed: () => Navigator.of(ctx).pop(),
                            ),
                            TextButton(
                              child: const Text(
                                "Edit Inventory",
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                              onPressed: () {
                                // if (_formKey.currentState!.validate()) {
                                //   _formKey.currentState!.save();
                                //   final updateData = {
                                //     "name": partyEditApiController
                                //         .editnameController.text,
                                //     "companyname": partyEditApiController
                                //         .editcompanynameController.text,
                                //     "email": partyEditApiController
                                //         .editemailController.text,
                                //     "phonenumber": partyEditApiController
                                //         .editphonenumberController.text,
                                //     "receivables": partyEditApiController
                                //         .editreceivablesController.text,
                                //     "unusedcredits": partyEditApiController
                                //         .editunusedcreditsController.text,
                                //   };
                                //   partyEditApiController.updateParty(
                                //     user!.id,
                                //     updateData,
                                //   );
                                //   print(
                                //     "Sending Update Data: $updateData",
                                //   ); //
                                //   Navigator.of(ctx).pop(); // Close the dialog
                                  // Call delete function
                                }

                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          },
        );
      }),
      // body: Padding(
      //   padding: padding16,
      //   child: SingleChildScrollView(
      //     child: Column(
      //       mainAxisSize: MainAxisSize.min,
      //       children: [
      //         const InventoryPageContainer(),
      //         Padding(
      //           padding: SizeConfig().getPadding(top: 15),
      //           child: const InventoryPageTopheader(),
      //         ),
      //         Padding(
      //           padding: SizeConfig().getPadding(top: 15),
      //           child: const InventoryPageTable(),
      //         ),
      //         // Spacer(),
      //         const Row(
      //           mainAxisAlignment: MainAxisAlignment.end,
      //           children: [
      //             FloatingActionChatButtonWidget(),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

      bottomNavigationBar: const BottomnavigationbarWidget(),
      floatingActionButton: const FloatingactionaddbuttonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
