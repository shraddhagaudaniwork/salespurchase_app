import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:salespurchase_app/views/screens/home/widgets/floatingactionbutton_widget.dart';





import '../../../utills/app_colors.dart';
import 'drawer/drawer_controller.dart';
import 'homecontroller.dart';
import 'navigation/navigation_controller.dart';
import 'navigation/widgets/bottomnavigationbar_widget.dart';
import 'navigation/widgets/pageview_widget.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    ExpensionTileController expensionTileController =
        Get.put(ExpensionTileController());

    HomeController homeController = Get.put(HomeController());
    NavigationController navigationController = Get.put(NavigationController());

    ItemTileController itemTileController = Get.put(ItemTileController());
    SalesTileController salesTileController = Get.put(SalesTileController());
    PurchaseTileController purchaseTileController =
        Get.put(PurchaseTileController());
    // return Obx(() {
    return const Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.backgroundcolor,
      // drawer: CustomDrawerwidget(
      //   backgroundColor: AppColors.backgroundcolor,
      //   // shape: InputBorder.none,
      //   elevation: 2,
      //   child: SingleChildScrollView(
      //     child: Padding(
      //       padding: const EdgeInsets.all(
      //         16,
      //       ),
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         mainAxisSize: MainAxisSize.min,
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         children: [
      //           height20,
      //           const SizedBox(
      //             width: 20,
      //           ),
      //           Row(
      //             children: [
      //               const SizedBox(
      //                 width: 12,
      //               ),
      //               const Icon(Icons.person),
      //               width10,
      //               const CustomTextWidget(
      //                 text: "Zeels Kachadiya",
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 18,
      //               ),
      //             ],
      //           ),
      //           const SizedBox(
      //             height: 30,
      //           ),
      //           const CustomDrawerTitleTextWidget(
      //             text: "GENERAL",
      //           ),
      //           // const CustomTextWidget(
      //           //   text: "GENERAL",
      //           //   color: AppColors.lightgreycolor,
      //           //   fontWeight: FontWeight.w500,
      //           //   fontSize: 13,
      //           // ),
      //           CustomListTileWidget(
      //             hoverColor: AppColors.bluecolor,
      //             leading: const Icon(
      //               Icons.wallet,
      //               color: Colors.black,
      //               size: 20,
      //             ),
      //             title: CustomTextWidget(
      //               text: "Dashboard",
      //               fontWeight: FontWeight.w600,
      //               color: AppColors.black,
      //               fontSize: 15,
      //             ),
      //             splashColor: AppColors.bluecolor,
      //             onTap: () {
      //               Get.toNamed(
      //                 RoutesName.homecomponent,
      //               );
      //             },
      //             // selectedColor: AppColors.bluecolor,
      //           ),
      //           CustomListTileWidget(
      //             leading: const Icon(
      //               Icons.group,
      //               color: Colors.black,
      //               size: 20,
      //             ),
      //             // hoverColor: AppColors.bluecolor,
      //             splashColor: AppColors.bluecolor,
      //             title: CustomTextWidget(
      //               text: "Parties",
      //               fontWeight: FontWeight.w600,
      //               fontSize: 15,
      //               color: AppColors.black,
      //             ),
      //             onTap: () {
      //               Get.toNamed(RoutesName.partiespage);
      //             },
      //             // selectedTileColor: AppColors.bluecolor,
      //             // selectedColor: AppColors.bluecolor,
      //           ),
      //           CustomExpensiontile_widget(
      //             // shape: Border(right: c),
      //             // backgroundColor: AppColors.bluecolor,
      //             leading: Icon(
      //               Icons.card_giftcard,
      //               color: AppColors.black,
      //               // color: (expensionTileController.iscustomitemicon)
      //               //     ? AppColors.black
      //               //     : AppColors.black,
      //               size: 20,
      //             ),
      //             title: CustomTextWidget(
      //               text: "Items",
      //               fontWeight: FontWeight.w600,
      //               color: (expensionTileController.iscustomitemicon.value)
      //                   ? AppColors.black
      //                   : AppColors.black,
      //               fontSize: 15,
      //             ),
      //             trailing: (expensionTileController.iscustomitemicon.value)
      //                 ? Icon(
      //                     Icons.arrow_drop_down_circle_rounded,
      //                     size: 20,
      //                     color: AppColors.black,
      //                   )
      //                 : Icon(
      //                     Icons.arrow_forward_ios_rounded,
      //                     color: AppColors.black,
      //                     size: 15,
      //                   ),
      //             onExpansionChanged: (val) {
      //               expensionTileController.changeItemIcon(val: val);
      //             },
      //             children: [
      //               Obx(() {
      //                 itemTileController.isSelected =
      //                     itemTileController.selectedIndex.value == 0;
      //                 return CustomListTileWidget(
      //                   title: const CustomTextWidget(
      //                     text: "Inventory",
      //                     fontWeight: FontWeight.w600,
      //                     fontSize: 15,
      //                   ),
      //                   selected: itemTileController.isSelected,
      //                   onTap: () {
      //                     itemTileController.selectTile(0); //
      //                     Get.toNamed(RoutesName.inventorypage);
      //                     // select the first tile
      //                   },
      //                   // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
      //                   selectedTileColor: itemTileController.isSelected
      //                       ? AppColors.bluecolor
      //                       : AppColors.black,
      //                   selectedColor: itemTileController.isSelected
      //                       ? AppColors.white
      //                       : AppColors.black,
      //                 );
      //               }),
      //               Obx(() {
      //                 itemTileController.isSelected =
      //                     itemTileController.selectedIndex.value == 1;
      //                 return CustomListTileWidget(
      //                   title: const CustomTextWidget(
      //                     text: "Warehose(Godown)",
      //                     fontWeight: FontWeight.w600,
      //                     fontSize: 15,
      //                   ),
      //                   selected: itemTileController.isSelected,
      //                   onTap: () {
      //                     itemTileController
      //                         .selectTile(1); // Select the first tile
      //                     Get.toNamed(RoutesName.warehousepage);
      //                   },
      //                   selectedTileColor: itemTileController.isSelected
      //                       ? AppColors.bluecolor
      //                       : AppColors.black,
      //                   selectedColor: itemTileController.isSelected
      //                       ? AppColors.white
      //                       : AppColors.black,
      //                 );
      //               }),
      //               // Obx(() {
      //               //   tileController.isSelected =
      //               //       tileController.selectedIndex.value == 1;
      //               //   return ListTile(
      //               //     title: const Text('Tile 1'),
      //               //     selected: tileController.isSelected,
      //               //     onTap: () {
      //               //       tileController
      //               //           .selectTile(1); // Select the first tile
      //               //
      //               //     },
      //               //     // textColor: tileController.isSelected
      //               //     //     ? AppColors.black
      //               //     //     : AppColors.white,
      //               //     // hoverColor: tileController.isSelected
      //               //     //     ? AppColors.transparent
      //               //     //     : AppColors.bluecolor,
      //               //     selectedTileColor: tileController.isSelected
      //               //         ? AppColors.bluecolor
      //               //         : AppColors.black,
      //               //     selectedColor: tileController.isSelected
      //               //         ? AppColors.white
      //               //         : AppColors.black,
      //               //   );
      //               // }),
      //             ],
      //           ),
      //           //===========
      //
      //           // GetBuilder<ExpensionTileController>(builder: (_) {
      //           //   return CustomExpensiontile_widget(
      //           //     // shape: Border(right: c),
      //           //     backgroundColor: AppColors.bluecolor,
      //           //     iconColor: AppColors.white,
      //           //     leading: Icon(
      //           //       Icons.card_giftcard,
      //           //       color: (expensionTileController.iscustomitemicon)
      //           //           ? AppColors.white
      //           //           : AppColors.black,
      //           //       size: 20,
      //           //     ),
      //           //     title: CustomTextWidget(
      //           //       text: "Items",
      //           //       fontWeight: FontWeight.w600,
      //           //       color: (expensionTileController.iscustomitemicon)
      //           //           ? AppColors.white
      //           //           : AppColors.black,
      //           //       fontSize: 15,
      //           //     ),
      //           //     trailing: (expensionTileController.iscustomitemicon)
      //           //         ? const Icon(Icons.arrow_drop_down_circle_rounded,
      //           //             size: 20)
      //           //         : Icon(
      //           //             Icons.arrow_forward_ios_rounded,
      //           //             color: AppColors.black,
      //           //             size: 15,
      //           //           ),
      //           //
      //           //     onExpansionChanged: (val) {
      //           //       expensionTileController.changeItemIcon(val: val);
      //           //     },
      //           //     children: [
      //           //       ListTile(
      //           //         selected: listtileChangeColorController
      //           //             .isselectedcolor.value,
      //           //         title: const CustomTextWidget(text: "sccd"),
      //           //         selectedTileColor:(expensionTileController.iscustomitemicon)?AppColors.red: Colors.green,
      //           //         textColor: AppColors.white,
      //           //
      //           //         onTap: () {
      //           //         },
      //           //       ),
      //           //       CustomListTileWidget(
      //           //         title: CustomTextWidget(
      //           //           text: "Inventory",
      //           //           fontWeight: FontWeight.w600,
      //           //           color: AppColors.black,
      //           //           fontSize: 15,
      //           //         ),
      //           //       ),
      //           //       CustomListTileWidget(
      //           //         title: CustomTextWidget(
      //           //           text: "Warehouse(Godown)",
      //           //           fontWeight: FontWeight.w600,
      //           //           color: AppColors.black,
      //           //           fontSize: 15,
      //           //         ),
      //           //       ),
      //           //     ],
      //           //   );
      //           // }),
      //
      //           //sales:
      //           CustomExpensiontile_widget(
      //             leading: const Icon(
      //               Icons.keyboard_alt_outlined,
      //               color: Colors.black,
      //               size: 20,
      //             ),
      //             title: CustomTextWidget(
      //               text: "Sales",
      //               fontWeight: FontWeight.w600,
      //               color: AppColors.black,
      //               fontSize: 15,
      //             ),
      //             trailing: (expensionTileController.iscustomsalesicon.value)
      //                 ? Icon(Icons.arrow_drop_down_circle_rounded,
      //                     color: AppColors.black, size: 20)
      //                 : Icon(
      //                     Icons.arrow_forward_ios_rounded,
      //                     color: AppColors.black,
      //                     size: 15,
      //                   ),
      //             onExpansionChanged: (val) {
      //               expensionTileController.changeSaleIcon(val: val);
      //             },
      //             children: [
      //               Obx(() {
      //                 salesTileController.isSelected =
      //                     salesTileController.selectedIndex.value == 0;
      //                 return CustomListTileWidget(
      //                   title: const CustomTextWidget(
      //                     text: "Sales invoice",
      //                     fontWeight: FontWeight.w600,
      //                     fontSize: 15,
      //                   ),
      //                   selected: salesTileController.isSelected,
      //                   onTap: () {
      //                     salesTileController
      //                         .selectTile(0); // Select the first tile
      //                     Get.toNamed(RoutesName.salesinvoicepage);
      //                   },
      //
      //                   // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
      //                   selectedTileColor: salesTileController.isSelected
      //                       ? AppColors.bluecolor
      //                       : AppColors.black,
      //                   selectedColor: salesTileController.isSelected
      //                       ? AppColors.white
      //                       : AppColors.black,
      //                 );
      //               }),
      //               Obx(() {
      //                 salesTileController.isSelected =
      //                     salesTileController.selectedIndex.value == 1;
      //                 return CustomListTileWidget(
      //                   title: const CustomTextWidget(
      //                     text: "Quotation",
      //                     fontWeight: FontWeight.w600,
      //                     fontSize: 15,
      //                   ),
      //                   selected: salesTileController.isSelected,
      //                   onTap: () {
      //                     salesTileController
      //                         .selectTile(1); // Select the first tile
      //                     Get.toNamed(RoutesName.quotationpage);
      //                   },
      //
      //                   // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
      //                   selectedTileColor: salesTileController.isSelected
      //                       ? AppColors.bluecolor
      //                       : AppColors.black,
      //                   selectedColor: salesTileController.isSelected
      //                       ? AppColors.white
      //                       : AppColors.black,
      //                 );
      //               }),
      //               Obx(() {
      //                 salesTileController.isSelected =
      //                     salesTileController.selectedIndex.value == 2;
      //                 return CustomListTileWidget(
      //                   title: const CustomTextWidget(
      //                     text: "Payment In",
      //                     fontWeight: FontWeight.w600,
      //                     fontSize: 15,
      //                   ),
      //                   selected: salesTileController.isSelected,
      //                   onTap: () {
      //                     salesTileController
      //                         .selectTile(2); // Select the first tile
      //                     Get.toNamed(RoutesName.paymentinpage);
      //                   },
      //
      //                   // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
      //                   selectedTileColor: salesTileController.isSelected
      //                       ? AppColors.bluecolor
      //                       : AppColors.black,
      //                   selectedColor: salesTileController.isSelected
      //                       ? AppColors.white
      //                       : AppColors.black,
      //                 );
      //               }),
      //               Obx(() {
      //                 salesTileController.isSelected =
      //                     salesTileController.selectedIndex.value == 3;
      //                 return CustomListTileWidget(
      //                   title: const CustomTextWidget(
      //                     text: "Sales Return",
      //                     fontWeight: FontWeight.w600,
      //                     fontSize: 15,
      //                   ),
      //                   selected: salesTileController.isSelected,
      //                   onTap: () {
      //                     salesTileController
      //                         .selectTile(3); // Select the first tile
      //                     Get.toNamed(
      //                       RoutesName.salesreturnpage,
      //                     );
      //                   },
      //
      //                   // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
      //                   selectedTileColor: salesTileController.isSelected
      //                       ? AppColors.bluecolor
      //                       : AppColors.black,
      //                   selectedColor: salesTileController.isSelected
      //                       ? AppColors.white
      //                       : AppColors.black,
      //                 );
      //               }),
      //               Obx(() {
      //                 salesTileController.isSelected =
      //                     salesTileController.selectedIndex.value == 4;
      //                 return CustomListTileWidget(
      //                   title: const CustomTextWidget(
      //                     text: "Credit Notes",
      //                     fontWeight: FontWeight.w600,
      //                     fontSize: 15,
      //                   ),
      //                   selected: salesTileController.isSelected,
      //                   onTap: () {
      //                     salesTileController
      //                         .selectTile(4); // Select the first tile
      //                     Get.toNamed(RoutesName.creditnotesepage);
      //                   },
      //
      //                   // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
      //                   selectedTileColor: salesTileController.isSelected
      //                       ? AppColors.bluecolor
      //                       : AppColors.black,
      //                   selectedColor: salesTileController.isSelected
      //                       ? AppColors.white
      //                       : AppColors.black,
      //                 );
      //               }),
      //               Obx(() {
      //                 salesTileController.isSelected =
      //                     salesTileController.selectedIndex.value == 5;
      //                 return CustomListTileWidget(
      //                   title: const CustomTextWidget(
      //                     text: "Delivery Challan",
      //                     fontWeight: FontWeight.w600,
      //                     fontSize: 15,
      //                   ),
      //                   selected: salesTileController.isSelected,
      //                   onTap: () {
      //                     salesTileController
      //                         .selectTile(5); // Select the first tile
      //                     Get.toNamed(RoutesName.deliverychallanpage);
      //                   },
      //                   // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
      //                   selectedTileColor: salesTileController.isSelected
      //                       ? AppColors.bluecolor
      //                       : AppColors.black,
      //                   selectedColor: salesTileController.isSelected
      //                       ? AppColors.white
      //                       : AppColors.black,
      //                 );
      //               }),
      //               Obx(() {
      //                 salesTileController.isSelected =
      //                     salesTileController.selectedIndex.value == 6;
      //                 return CustomListTileWidget(
      //                   title: const CustomTextWidget(
      //                     text: "Perform Invoice",
      //                     fontWeight: FontWeight.w600,
      //                     fontSize: 15,
      //                   ),
      //                   selected: salesTileController.isSelected,
      //                   onTap: () {
      //                     salesTileController
      //                         .selectTile(6); // Select the first tile
      //                     Get.toNamed(RoutesName.performainvoicepage);
      //                   },
      //
      //                   // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
      //                   selectedTileColor: salesTileController.isSelected
      //                       ? AppColors.bluecolor
      //                       : AppColors.black,
      //                   selectedColor: salesTileController.isSelected
      //                       ? AppColors.white
      //                       : AppColors.black,
      //                 );
      //               }),
      //             ],
      //           ),
      //
      //           //purchase:
      //           CustomExpensiontile_widget(
      //               leading: const Icon(
      //                 Icons.shopping_bag_outlined,
      //                 color: Colors.black,
      //                 size: 20,
      //               ),
      //               title: CustomTextWidget(
      //                 text: "Purchase",
      //                 fontWeight: FontWeight.w600,
      //                 color: AppColors.black,
      //                 fontSize: 15,
      //               ),
      //               onExpansionChanged: (val) {
      //                 expensionTileController.changePurchaseIcon(val: val);
      //               },
      //               trailing:
      //                   (expensionTileController.iscustompurchaseicon.value)
      //                       ? Icon(
      //                           Icons.arrow_drop_down_circle_rounded,
      //                           size: 20,
      //                           color: AppColors.black,
      //                         )
      //                       : Icon(
      //                           Icons.arrow_forward_ios_rounded,
      //                           color: AppColors.black,
      //                           size: 15,
      //                         ),
      //               children: [
      //                 Obx(() {
      //                   purchaseTileController.isSelected =
      //                       purchaseTileController.selectedIndex.value == 0;
      //                   return CustomListTileWidget(
      //                     title: const CustomTextWidget(
      //                       text: "Purchase Invoice",
      //                       fontWeight: FontWeight.w600,
      //                       fontSize: 15,
      //                     ),
      //                     selected: purchaseTileController.isSelected,
      //                     onTap: () {
      //                       purchaseTileController
      //                           .selectTile(0); // Select the first tile
      //                       Get.toNamed(RoutesName.purchaseinvoicepage);
      //                     },
      //
      //                     // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
      //                     selectedTileColor: purchaseTileController.isSelected
      //                         ? AppColors.bluecolor
      //                         : AppColors.black,
      //                     selectedColor: purchaseTileController.isSelected
      //                         ? AppColors.white
      //                         : AppColors.black,
      //                   );
      //                 }),
      //                 Obx(() {
      //                   purchaseTileController.isSelected =
      //                       purchaseTileController.selectedIndex.value == 1;
      //                   return CustomListTileWidget(
      //                     title: const CustomTextWidget(
      //                       text: "Payment Out",
      //                       fontWeight: FontWeight.w600,
      //                       fontSize: 15,
      //                     ),
      //                     selected: purchaseTileController.isSelected,
      //                     onTap: () {
      //                       purchaseTileController
      //                           .selectTile(1); // Select the first tile
      //                       Get.toNamed(RoutesName.paymentoutepage);
      //                     },
      //
      //                     // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
      //                     selectedTileColor: purchaseTileController.isSelected
      //                         ? AppColors.bluecolor
      //                         : AppColors.black,
      //                     selectedColor: purchaseTileController.isSelected
      //                         ? AppColors.white
      //                         : AppColors.black,
      //                   );
      //                 }),
      //                 Obx(() {
      //                   purchaseTileController.isSelected =
      //                       purchaseTileController.selectedIndex.value == 2;
      //                   return CustomListTileWidget(
      //                     title: const CustomTextWidget(
      //                       text: "Purchase Return",
      //                       fontWeight: FontWeight.w600,
      //                       fontSize: 15,
      //                     ),
      //                     selected: purchaseTileController.isSelected,
      //                     onTap: () {
      //                       purchaseTileController
      //                           .selectTile(2); // Select the first tile
      //                       Get.toNamed(RoutesName.purchasereturnpage);
      //                     },
      //
      //                     // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
      //                     selectedTileColor: purchaseTileController.isSelected
      //                         ? AppColors.bluecolor
      //                         : AppColors.black,
      //                     selectedColor: purchaseTileController.isSelected
      //                         ? AppColors.white
      //                         : AppColors.black,
      //                   );
      //                 }),
      //                 Obx(() {
      //                   purchaseTileController.isSelected =
      //                       purchaseTileController.selectedIndex.value == 3;
      //                   return CustomListTileWidget(
      //                     title: const CustomTextWidget(
      //                       text: "Debit Notes",
      //                       fontWeight: FontWeight.w600,
      //                       fontSize: 15,
      //                     ),
      //                     selected: purchaseTileController.isSelected,
      //                     onTap: () {
      //                       purchaseTileController
      //                           .selectTile(3); // Select the first tile
      //                       Get.toNamed(RoutesName.debitnotespage);
      //                     },
      //
      //                     // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
      //                     selectedTileColor: purchaseTileController.isSelected
      //                         ? AppColors.bluecolor
      //                         : AppColors.black,
      //                     selectedColor: purchaseTileController.isSelected
      //                         ? AppColors.white
      //                         : AppColors.black,
      //                   );
      //                 }),
      //                 Obx(() {
      //                   purchaseTileController.isSelected =
      //                       purchaseTileController.selectedIndex.value == 4;
      //                   return CustomListTileWidget(
      //                     title: const CustomTextWidget(
      //                       text: "Purchase Orders",
      //                       fontWeight: FontWeight.w600,
      //                       fontSize: 15,
      //                     ),
      //                     selected: purchaseTileController.isSelected,
      //                     onTap: () {
      //                       purchaseTileController
      //                           .selectTile(4); // Select the first tile
      //                       Get.toNamed(RoutesName.purchaseorderspage);
      //                     },
      //
      //                     // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
      //                     selectedTileColor: purchaseTileController.isSelected
      //                         ? AppColors.bluecolor
      //                         : AppColors.black,
      //                     selectedColor: purchaseTileController.isSelected
      //                         ? AppColors.white
      //                         : AppColors.black,
      //                   );
      //                 }),
      //               ]),
      //           CustomListTileWidget(
      //             leading: const Icon(
      //               Icons.list_alt_outlined,
      //               color: Colors.black,
      //               size: 20,
      //             ),
      //             splashColor: AppColors.bluecolor,
      //             title: CustomTextWidget(
      //               text: "Reports",
      //               color: AppColors.black,
      //               fontWeight: FontWeight.w600,
      //               fontSize: 15,
      //             ),
      //             onTap: () {
      //               Get.toNamed(RoutesName.reportspage);
      //             },
      //           ),
      //           const SizedBox(
      //             height: 20,
      //           ),
      //           //accounting solution:
      //           const CustomDrawerTitleTextWidget(
      //             text: "ACCOUNTING SOLUTIONS",
      //           ),
      //           // const CustomTextWidget(
      //           //   text: "ACCOUNTING SOLUTIONS",
      //           //   color: AppColors.lightgreycolor,
      //           //   fontWeight: FontWeight.w400,
      //           //   fontSize: 13,
      //           // ),
      //           CustomListTileWidget(
      //             leading: const Icon(
      //               Icons.account_balance,
      //               color: Colors.black,
      //               size: 20,
      //             ),
      //             splashColor: AppColors.bluecolor,
      //             title: CustomTextWidget(
      //               text: "Cash & Bank",
      //               fontWeight: FontWeight.w600,
      //               color: AppColors.black,
      //               fontSize: 15,
      //             ),
      //             onTap: () {
      //               Get.toNamed(RoutesName.cashandbankpage);
      //             },
      //             selectedTileColor: AppColors.bluecolor,
      //           ),
      //           CustomListTileWidget(
      //             leading: const Icon(
      //               Icons.inbox,
      //               color: Colors.black,
      //               size: 20,
      //             ),
      //
      //             title: CustomTextWidget(
      //               text: "E-Invoicing",
      //               fontWeight: FontWeight.w600,
      //               color: AppColors.black,
      //               fontSize: 15,
      //             ),
      //             splashColor: AppColors.bluecolor,
      //             selectedTileColor: AppColors.bluecolor,
      //             onTap: () {
      //               Get.toNamed(RoutesName.einvoicingpage);
      //             },
      //             // selectedColor: AppColors.bluecolor,
      //           ),
      //           CustomListTileWidget(
      //             leading: const Icon(
      //               Icons.add_link_sharp,
      //               color: Colors.black,
      //               size: 20,
      //             ),
      //             splashColor: AppColors.bluecolor,
      //
      //             title: CustomTextWidget(
      //               text: "Automated Bills",
      //               fontWeight: FontWeight.w600,
      //               color: AppColors.black,
      //               fontSize: 15,
      //             ),
      //             selectedTileColor: AppColors.bluecolor,
      //             onTap: () {
      //               Get.toNamed(RoutesName.automatedbillspage);
      //             },
      //             // selectedColor: AppColors.bluecolor,
      //           ),
      //           CustomListTileWidget(
      //             leading: const Icon(
      //               Icons.wallet,
      //               color: Colors.black,
      //               size: 20,
      //             ),
      //             splashColor: AppColors.bluecolor,
      //             title: CustomTextWidget(
      //               text: "Expenses",
      //               fontWeight: FontWeight.w600,
      //               color: AppColors.black,
      //               fontSize: 15,
      //             ),
      //             selectedTileColor: AppColors.bluecolor,
      //             onTap: () {
      //               Get.toNamed(RoutesName.expensespage);
      //             },
      //             // selectedColor: AppColors.bluecolor,
      //           ),
      //           CustomListTileWidget(
      //             leading: const Icon(
      //               Icons.badge,
      //               color: Colors.black,
      //               size: 20,
      //             ),
      //             splashColor: AppColors.bluecolor,
      //
      //             title: CustomTextWidget(
      //               text: "POS Billing",
      //               fontWeight: FontWeight.w600,
      //               color: AppColors.black,
      //               fontSize: 15,
      //             ),
      //             selectedTileColor: AppColors.bluecolor,
      //             onTap: () {
      //               Get.toNamed(RoutesName.posbillingpage);
      //             },
      //             // selectedColor: AppColors.bluecolor,
      //           ),
      //           const SizedBox(
      //             height: 20,
      //           ),
      //           //business tools:
      //           const CustomDrawerTitleTextWidget(text: "BUSINESS TOOLS"),
      //           // const CustomTextWidget(
      //           //   text: "BUSINESS TOOLS",
      //           //   color: AppColors.lightgreycolor,
      //           //   fontWeight: FontWeight.w400,
      //           //   fontSize: 13,
      //           // ),
      //           CustomListTileWidget(
      //             leading: const Icon(
      //               Icons.attribution,
      //               color: Colors.black,
      //               size: 20,
      //             ),
      //             splashColor: AppColors.bluecolor,
      //
      //             title: CustomTextWidget(
      //               text: "Staff Attendance",
      //               fontWeight: FontWeight.w600,
      //               color: AppColors.black,
      //               fontSize: 15,
      //             ),
      //             selectedTileColor: AppColors.bluecolor,
      //             onTap: () {
      //               Get.toNamed(RoutesName.staffattendancepage);
      //             },
      //             // selectedColor: AppColors.bluecolor,
      //           ),
      //           CustomListTileWidget(
      //               leading: const Icon(
      //                 Icons.person,
      //                 color: Colors.black,
      //                 size: 20,
      //               ),
      //               splashColor: AppColors.bluecolor,
      //               title: CustomTextWidget(
      //                 text: "Manage User",
      //                 fontWeight: FontWeight.w600,
      //                 color: AppColors.black,
      //                 fontSize: 15,
      //               ),
      //               selectedTileColor: AppColors.bluecolor,
      //               onTap: () {
      //                 Get.toNamed(RoutesName.manageuserpage);
      //               }
      //               // selectedColor: AppColors.bluecolor,
      //               ),
      //           CustomListTileWidget(
      //             leading: const Icon(
      //               Icons.store_sharp,
      //               color: Colors.black,
      //               size: 20,
      //             ),
      //             splashColor: AppColors.bluecolor,
      //
      //             title: CustomTextWidget(
      //               text: "Online Store",
      //               fontWeight: FontWeight.w600,
      //               color: AppColors.black,
      //               fontSize: 15,
      //             ),
      //             selectedTileColor: AppColors.bluecolor,
      //             onTap: () {
      //               Get.toNamed(RoutesName.onlinestorepage);
      //             },
      //             // selectedColor: AppColors.bluecolor,
      //           ),
      //
      //           CustomListTileWidget(
      //             leading: Icon(
      //               Icons.account_box_rounded,
      //               color: Colors.black,
      //               size: 22.sp,
      //             ),
      //             splashColor: AppColors.bluecolor,
      //
      //             title: CustomTextWidget(
      //               text: "Apply For Loan",
      //               fontWeight: FontWeight.w600,
      //               color: AppColors.black,
      //               fontSize: 15.sp,
      //             ),
      //             selectedTileColor: AppColors.bluecolor,
      //             onTap: () {
      //               Get.toNamed(
      //                 RoutesName.applyforloan_page,
      //               );
      //             },
      //             // selectedColor: AppColors.bluecolor,
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),

      // appBar: const CustomAppBarWidget(
      //   title: CustomAppBarTextWidget(text: "Dashboard"),
      // ),
      // CustomAppBarWidget(
      //   leading: Builder(
      //     builder: (BuildContext context) {
      //       return IconButton(
      //         icon: const Icon(
      //           Icons.list_rounded,
      //           color: AppColors.bluecolor, // Change Custom Drawer Icon Color
      //         ),
      //         onPressed: () {
      //           Scaffold.of(context).openDrawer();
      //         },
      //         tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      //       );
      //     },
      //   ),
      //
      //   centerTitle: true,
      //   title: CustomTextWidget(
      //     text: "Dashboard",
      //     fontSize: 15.sp,
      //     fontWeight: FontWeight.w700,
      //   ),
      //   elevation: 2,
      //   actions: const [
      //     Padding(
      //       padding: EdgeInsets.all(
      //         16.0,
      //       ),
      //       child: Icon(
      //         Icons.notifications_outlined,
      //         color: AppColors.bluecolor,
      //       ),
      //     ),
      //     // CustomButtonWidget(onPressed: (){}, child: const Icon(Icons.notifications_outlined))
      //   ],
      // ),

      body: PageviewWidget(),
      // body: PageView(
      //   controller: navigationController.pageController,
      //   scrollDirection: Axis.horizontal,
      //   // physics: const CarouselScrollPhysics(),
      //   // allowImplicitScrolling: true,
      //   pageSnapping: true,
      //   onPageChanged: (val) {
      //     navigationController.changePageViewIndex(val);
      //   },
      //   children: const [
      //     HomeComponent(),
      //     SalesComponent(),
      //     PurchaseComponent(),
      //     SettingComponent(),
      //   ],
      // ),

      bottomNavigationBar: BottomnavigationbarWidget(),
      floatingActionButton: FloatingactionaddbuttonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
    // });
  }
}
