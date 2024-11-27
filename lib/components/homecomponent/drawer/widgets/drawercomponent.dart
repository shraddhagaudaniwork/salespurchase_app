import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:salespurchase_app/utills/app_assets.dart';
import 'package:salespurchase_app/widgets/button/refernow_buttonwidget.dart';
import 'package:salespurchase_app/widgets/custom_containerwidget.dart';
import '../../../../routes/route_name.dart';
import '../../../../utills/app_colors.dart';
import '../../../../utills/static_decoration.dart';
import '../../../../views/screens/home/drawer/drawer_controller.dart';
import '../../../../views/screens/home/homecontroller.dart';
import '../../../../views/screens/home/navigation/navigation_controller.dart';
import 'custom_drawericonwidget.dart';
import 'custom_drawertitletextwidget.dart';
import '../../../../widgets/custom_drawerwidget.dart';
import '../../../../widgets/custom_expensiontilewidget.dart';
import '../../../../widgets/custom_listtilewidget.dart';
import '../../../../widgets/custom_textwidget.dart';
import '../../homecomponent_controller.dart';

class DrawerComponents extends StatelessWidget {
  const DrawerComponents({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> key = GlobalKey();

    HomeComponentController homeComponentController =
        Get.put(HomeComponentController());

    ExpensionTileController expensionTileController =
        Get.put(ExpensionTileController());

    HomeController homeController = Get.put(HomeController());
    NavigationController navigationController = Get.put(NavigationController());

    ItemTileController itemTileController = Get.put(ItemTileController());
    SalesTileController salesTileController = Get.put(SalesTileController());
    PurchaseTileController purchaseTileController =
        Get.put(PurchaseTileController());
    ScrollController scrollController = ScrollController();

    return Obx(() {
      return CustomDrawerwidget(
        elevation: 2,
        child: CustomContainerWidget(
          gradient: const LinearGradient(
            colors: [
              AppColors.bluegradient,
              AppColors.bluecolor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(
                16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                  // height20,
                  // width20,
                  // Row(
                  //   children: [
                  //     const Icon(
                  //       size: 16,
                  //       Icons.person,
                  //     ),
                  //     Padding(
                  //       padding: SizeConfig().getPadding(
                  //         all: 20,
                  //       ),
                  //       child: CustomTextWidget(
                  //         text: "Zeels Kachadiya",
                  //         fontWeight: fontWeightbold,
                  //         color: AppColors.wcolor,
                  //         fontSize: 20,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SvgPicture.asset(
                    AppAsset.signurdoc,
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height * 0.035,
                  ),
                  height20,
                  const CustomDrawerTitleWhiteTextWidget(
                    text: "GENERAL",
                  ),

                  CustomListTileWidget(


                    // hoverColor: Colors.white12,
                    // splashColor: Colors.grey,
                    leading: SvgPicture.asset(
                      AppAsset.wallet,
                      fit: BoxFit.cover,
                    ),
                    title: const CustomDrawerListTileTitleWhiteTextWidget(
                      text: "Dashboard",
                    ),

                    onTap: () {
                      Get.toNamed(
                        // RoutesName.homepage,
                        RoutesName.homecomponent,
                      );
                    },
                    // selectedColor: AppColors.bluecolor,
                  ),
                  CustomListTileWidget(
                    leading: SvgPicture.asset(
                      AppAsset.parties,
                      fit: BoxFit.cover,
                    ),
                    hoverColor: AppColors.bluecolor,
                    splashColor: AppColors.bluecolor,
                    title: const CustomDrawerListTileTitleWhiteTextWidget(
                      text: "Parties",
                    ),
                    onTap: () {
                      Get.toNamed(RoutesName.partiespage);
                    },
                  ),
                  CustomExpensiontile_widget(
                    leading: SvgPicture.asset(
                      AppAsset.items,
                      fit: BoxFit.cover,
                    ),
                    // title: CustomTextWidget(
                    //   text: "Items",
                    //   fontWeight: FontWeight.w600,
                    //   color: (expensionTileController.iscustomitemicon.value)
                    //       ? AppColors.black
                    //       : AppColors.black,
                    //   fontSize: 12.sp,
                    // ),
                    title: const CustomDrawerListTileTitleWhiteTextWidget(
                      text: "Items",
                      // color: (expensionTileController.iscustomitemicon.value)
                      //     ? AppColors.darkgreycolor
                      //     : AppColors.darkgreycolor,
                    ),
                    trailing: (expensionTileController.iscustomitemicon.value)
                        ? SvgPicture.asset(
                            AppAsset.dropdownround,
                            fit: BoxFit.cover,
                          )
                        : const CustomDrawerDarkGreyIconWidget(
                            icon: Icons.arrow_forward_ios_rounded,
                            size: 20,
                            color: AppColors.wcolor,
                          ),
                    onExpansionChanged: (val) {
                      expensionTileController.changeItemIcon(val: val);
                    },
                    children: [
                      Obx(() {
                        itemTileController.isSelected =
                            itemTileController.selectedIndex.value == 0;
                        return CustomListTileWidget(
                          title: CustomTextWidget(
                            text: "Inventory",
                            fontWeight: fontWeight600,
                            color: AppColors.wcolor,
                            fontSize: 15,
                            // fontSize : 12.sp,
                          ),
                          selected: itemTileController.isSelected,
                          onTap: () {
                            itemTileController.selectTile(0); //
                            Get.toNamed(RoutesName.inventorypage);
                            // select the first tile
                          },
                          hoverColor: AppColors.bluecolor,

                          // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
                          selectedTileColor: itemTileController.isSelected
                              ? AppColors.bluecolor
                              : AppColors.blackcolor,
                          selectedColor: itemTileController.isSelected
                              ? AppColors.white
                              : AppColors.darkgreycolor,
                        );
                      }),
                      Obx(() {
                        itemTileController.isSelected =
                            itemTileController.selectedIndex.value == 1;
                        return CustomListTileWidget(
                          title: const CustomTextWidget(
                            text: "Warehose(Godown)",
                            color: AppColors.wcolor,
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            // fontSize : 12.sp,
                          ),
                          selected: itemTileController.isSelected,
                          onTap: () {
                            itemTileController
                                .selectTile(1); // Select the first tile
                            Get.toNamed(RoutesName.warehousepage);
                          },
                          hoverColor: AppColors.bluecolor,
                          selectedTileColor: itemTileController.isSelected
                              ? AppColors.bluecolor
                              : AppColors.blackcolor,
                          selectedColor: itemTileController.isSelected
                              ? AppColors.white
                              : AppColors.darkgreycolor,
                        );
                      }),
                      // Obx(() {
                      //   tileController.isSelected =
                      //       tileController.selectedIndex.value == 1;
                      //   return ListTile(
                      //     title: const Text('Tile 1'),
                      //     selected: tileController.isSelected,
                      //     onTap: () {
                      //       tileController
                      //           .selectTile(1); // Select the first tile
                      //
                      //     },
                      //     // textColor: tileController.isSelected
                      //     //     ? AppColors.black
                      //     //     : AppColors.white,
                      //     // hoverColor: tileController.isSelected
                      //     //     ? AppColors.transparent
                      //     //     : AppColors.bluecolor,
                      //     selectedTileColor: tileController.isSelected
                      //         ? AppColors.bluecolor
                      //         : AppColors.black,
                      //     selectedColor: tileController.isSelected
                      //         ? AppColors.white
                      //         : AppColors.black,
                      //   );
                      // }),
                    ],
                  ),

                  //===========

                  // GetBuilder<ExpensionTileController>(builder: (_) {
                  //   return CustomExpensiontile_widget(
                  //     // shape: Border(right: c),
                  //     backgroundColor: AppColors.bluecolor,
                  //     iconColor: AppColors.white,
                  //     leading: Icon(
                  //       Icons.card_giftcard,
                  //       color: (expensionTileController.iscustomitemicon)
                  //           ? AppColors.white
                  //           : AppColors.black,
                  //       size: 20,
                  //     ),
                  //     title: CustomTextWidget(
                  //       text: "Items",
                  //       fontWeight: FontWeight.w600,
                  //       color: (expensionTileController.iscustomitemicon)
                  //           ? AppColors.white
                  //           : AppColors.black,
                  //       fontSize: 15,
                  //     ),
                  //     trailing: (expensionTileController.iscustomitemicon)
                  //         ? const Icon(Icons.arrow_drop_down_circle_rounded,
                  //             size: 20)
                  //         : Icon(
                  //             Icons.arrow_forward_ios_rounded,
                  //             color: AppColors.black,
                  //             size: 15,
                  //           ),
                  //
                  //     onExpansionChanged: (val) {
                  //       expensionTileController.changeItemIcon(val: val);
                  //     },
                  //     children: [
                  //       ListTile(
                  //         selected: listtileChangeColorController
                  //             .isselectedcolor.value,
                  //         title: const CustomTextWidget(text: "sccd"),
                  //         selectedTileColor:(expensionTileController.iscustomitemicon)?AppColors.red: Colors.green,
                  //         textColor: AppColors.white,
                  //
                  //         onTap: () {
                  //         },
                  //       ),
                  //       CustomListTileWidget(
                  //         title: CustomTextWidget(
                  //           text: "Inventory",
                  //           fontWeight: FontWeight.w600,
                  //           color: AppColors.black,
                  //           fontSize: 15,
                  //         ),
                  //       ),
                  //       CustomListTileWidget(
                  //         title: CustomTextWidget(
                  //           text: "Warehouse(Godown)",
                  //           fontWeight: FontWeight.w600,
                  //           color: AppColors.black,
                  //           fontSize: 15,
                  //         ),
                  //       ),
                  //     ],
                  //   );
                  // }),

                  //sales:
                  CustomExpensiontile_widget(
                    leading: SvgPicture.asset(
                      AppAsset.sales,
                      fit: BoxFit.cover,
                    ),
                    title: const CustomDrawerListTileTitleWhiteTextWidget(
                      text: "Sales",
                    ),
                    trailing: (expensionTileController.iscustomsalesicon.value)
                        ? SvgPicture.asset(
                            AppAsset.dropdownround,
                            fit: BoxFit.cover,
                          )
                        : const CustomDrawerDarkGreyIconWidget(
                            color: AppColors.wcolor,
                            icon: Icons.arrow_forward_ios_rounded,
                            // size: 12.sp,
                          ),
                    onExpansionChanged: (val) {
                      // Get.toNamed(RoutesName.salescomponent);
                      expensionTileController.changeSaleIcon(val: val);
                    },
                    children: [
                      Obx(() {
                        salesTileController.isSelected =
                            salesTileController.selectedIndex.value == 0;
                        return CustomListTileWidget(
                          title: const CustomDrawerListTileTitleWhiteTextWidget(
                            text: "Sales invoice",
                          ),
                          selected: salesTileController.isSelected,
                          onTap: () {
                            salesTileController
                                .selectTile(0); // Select the first tile
                            Get.toNamed(
                              RoutesName.salesinvoicepage,
                            );
                          },
                          hoverColor: AppColors.bluecolor,

                          // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
                          selectedTileColor: salesTileController.isSelected
                              ? AppColors.bluecolor
                              : AppColors.blackcolor,
                          selectedColor: salesTileController.isSelected
                              ? AppColors.white
                              : AppColors.darkgreycolor,
                        );
                      }),
                      Obx(() {
                        salesTileController.isSelected =
                            salesTileController.selectedIndex.value == 1;
                        return CustomListTileWidget(
                          title: const CustomDrawerListTileTitleWhiteTextWidget(
                              text: "Quotation"),
                          selected: salesTileController.isSelected,
                          onTap: () {
                            salesTileController
                                .selectTile(1); // Select the first tile
                            Get.toNamed(RoutesName.quotationpage);
                          },
                          hoverColor: AppColors.bluecolor,

                          // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
                          selectedTileColor: salesTileController.isSelected
                              ? AppColors.bluecolor
                              : AppColors.blackcolor,
                          selectedColor: salesTileController.isSelected
                              ? AppColors.white
                              : AppColors.darkgreycolor,
                        );
                      }),
                      Obx(() {
                        salesTileController.isSelected =
                            salesTileController.selectedIndex.value == 2;
                        return CustomListTileWidget(
                          title: const CustomDrawerListTileTitleWhiteTextWidget(
                              text: "Payment In"),
                          selected: salesTileController.isSelected,
                          onTap: () {
                            salesTileController
                                .selectTile(2); // Select the first tile
                            Get.toNamed(RoutesName.paymentinpage);
                          },
                          hoverColor: AppColors.bluecolor,

                          // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
                          selectedTileColor: salesTileController.isSelected
                              ? AppColors.bluecolor
                              : AppColors.blackcolor,
                          selectedColor: salesTileController.isSelected
                              ? AppColors.white
                              : AppColors.darkgreycolor,
                        );
                      }),
                      Obx(() {
                        salesTileController.isSelected =
                            salesTileController.selectedIndex.value == 3;
                        return CustomListTileWidget(
                          title: const CustomDrawerListTileTitleWhiteTextWidget(
                            text: "Sales Return",
                          ),
                          selected: salesTileController.isSelected,
                          onTap: () {
                            salesTileController
                                .selectTile(3); // Select the first tile
                            Get.toNamed(
                              RoutesName.salesreturnpage,
                            );
                          },
                          hoverColor: AppColors.bluecolor,

                          // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
                          selectedTileColor: salesTileController.isSelected
                              ? AppColors.bluecolor
                              : AppColors.blackcolor,
                          selectedColor: salesTileController.isSelected
                              ? AppColors.white
                              : AppColors.darkgreycolor,
                        );
                      }),
                      Obx(() {
                        salesTileController.isSelected =
                            salesTileController.selectedIndex.value == 4;
                        return CustomListTileWidget(
                          title: const CustomDrawerListTileTitleWhiteTextWidget(
                              text: "Credit Notes"),
                          selected: salesTileController.isSelected,
                          onTap: () {
                            salesTileController
                                .selectTile(4); // Select the first tile
                            Get.toNamed(RoutesName.creditnotesepage);
                          },
                          hoverColor: AppColors.bluecolor,

                          // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
                          selectedTileColor: salesTileController.isSelected
                              ? AppColors.bluecolor
                              : AppColors.blackcolor,
                          selectedColor: salesTileController.isSelected
                              ? AppColors.white
                              : AppColors.darkgreycolor,
                        );
                      }),
                      Obx(() {
                        salesTileController.isSelected =
                            salesTileController.selectedIndex.value == 5;
                        return CustomListTileWidget(
                          title: const CustomDrawerListTileTitleWhiteTextWidget(
                              text: "Delivery Challan"),
                          selected: salesTileController.isSelected,
                          onTap: () {
                            salesTileController
                                .selectTile(5); // Select the first tile
                            Get.toNamed(RoutesName.deliverychallanpage);
                          },
                          hoverColor: AppColors.bluecolor,

                          // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
                          selectedTileColor: salesTileController.isSelected
                              ? AppColors.bluecolor
                              : AppColors.blackcolor,
                          selectedColor: salesTileController.isSelected
                              ? AppColors.white
                              : AppColors.darkgreycolor,
                        );
                      }),
                      Obx(() {
                        salesTileController.isSelected =
                            salesTileController.selectedIndex.value == 6;
                        return CustomListTileWidget(
                          title: const CustomDrawerListTileTitleWhiteTextWidget(
                            text: "Perform Invoice",
                          ),
                          selected: salesTileController.isSelected,
                          onTap: () {
                            salesTileController
                                .selectTile(6); // Select the first tile
                            Get.toNamed(RoutesName.performainvoicepage);
                          },
                          hoverColor: AppColors.bluecolor,

                          // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
                          selectedTileColor: salesTileController.isSelected
                              ? AppColors.bluecolor
                              : AppColors.blackcolor,
                          selectedColor: salesTileController.isSelected
                              ? AppColors.white
                              : AppColors.darkgreycolor,
                        );
                      }),
                    ],
                  ),

                  //purchase:
                  CustomExpensiontile_widget(
                      leading: SvgPicture.asset(
                        AppAsset.purchase,
                        fit: BoxFit.cover,
                      ),
                      title: const CustomDrawerListTileTitleWhiteTextWidget(
                          text: "Purchase"),
                      onExpansionChanged: (val) {
                        // Get.toNamed(RoutesName.purchasecomponent);

                        expensionTileController.changePurchaseIcon(val: val);
                      },
                      trailing:
                          (expensionTileController.iscustompurchaseicon.value)
                              ? SvgPicture.asset(
                                  AppAsset.dropdownround,
                                  fit: BoxFit.cover,
                                )
                              : const CustomDrawerDarkGreyIconWidget(
                                  icon: Icons.arrow_forward_ios_rounded,
                                  color: AppColors.wcolor,
                                  // size: 12.sp,
                                ),
                      children: [
                        Obx(() {
                          purchaseTileController.isSelected =
                              purchaseTileController.selectedIndex.value == 0;
                          return CustomListTileWidget(
                            title:
                                const CustomDrawerListTileTitleWhiteTextWidget(
                                    text: "Purchase Invoice"),
                            selected: purchaseTileController.isSelected,
                            onTap: () {
                              purchaseTileController
                                  .selectTile(0); // Select the first tile
                              Get.toNamed(RoutesName.purchaseinvoicepage);
                            },
                            hoverColor: AppColors.bluecolor,

                            // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
                            selectedTileColor: purchaseTileController.isSelected
                                ? AppColors.bluecolor
                                : AppColors.blackcolor,
                            selectedColor: purchaseTileController.isSelected
                                ? AppColors.white
                                : AppColors.darkgreycolor,
                          );
                        }),
                        Obx(() {
                          purchaseTileController.isSelected =
                              purchaseTileController.selectedIndex.value == 1;
                          return CustomListTileWidget(
                            title:
                                const CustomDrawerListTileTitleWhiteTextWidget(
                                    text: "Payment Out"),
                            selected: purchaseTileController.isSelected,
                            onTap: () {
                              purchaseTileController
                                  .selectTile(1); // Select the first tile
                              Get.toNamed(RoutesName.paymentoutepage);
                            },
                            hoverColor: AppColors.bluecolor,

                            // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
                            selectedTileColor: purchaseTileController.isSelected
                                ? AppColors.bluecolor
                                : AppColors.blackcolor,
                            selectedColor: purchaseTileController.isSelected
                                ? AppColors.white
                                : AppColors.darkgreycolor,
                          );
                        }),
                        Obx(() {
                          purchaseTileController.isSelected =
                              purchaseTileController.selectedIndex.value == 2;
                          return CustomListTileWidget(
                            title:
                                const CustomDrawerListTileTitleWhiteTextWidget(
                              text: "Purchase Return",
                            ),
                            selected: purchaseTileController.isSelected,
                            onTap: () {
                              purchaseTileController
                                  .selectTile(2); // Select the first tile
                              Get.toNamed(RoutesName.purchasereturnpage);
                            },
                            hoverColor: AppColors.bluecolor,

                            // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
                            selectedTileColor: purchaseTileController.isSelected
                                ? AppColors.bluecolor
                                : AppColors.blackcolor,
                            selectedColor: purchaseTileController.isSelected
                                ? AppColors.white
                                : AppColors.darkgreycolor,
                          );
                        }),
                        Obx(() {
                          purchaseTileController.isSelected =
                              purchaseTileController.selectedIndex.value == 3;
                          return CustomListTileWidget(
                            title:
                                const CustomDrawerListTileTitleWhiteTextWidget(
                                    text: "Debit Notes"),
                            selected: purchaseTileController.isSelected,
                            onTap: () {
                              purchaseTileController
                                  .selectTile(3); // Select the first tile
                              Get.toNamed(RoutesName.debitnotespage);
                            },
                            hoverColor: AppColors.bluecolor,

                            // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
                            selectedTileColor: purchaseTileController.isSelected
                                ? AppColors.bluecolor
                                : AppColors.blackcolor,
                            selectedColor: purchaseTileController.isSelected
                                ? AppColors.white
                                : AppColors.darkgreycolor,
                          );
                        }),
                        Obx(() {
                          purchaseTileController.isSelected =
                              purchaseTileController.selectedIndex.value == 4;
                          return CustomListTileWidget(
                            title:
                                const CustomDrawerListTileTitleWhiteTextWidget(
                              text: "Purchase Orders",
                            ),
                            selected: purchaseTileController.isSelected,
                            onTap: () {
                              purchaseTileController
                                  .selectTile(4); // Select the first tile
                              Get.toNamed(RoutesName.purchaseorderspage);
                            },
                            hoverColor: AppColors.bluecolor,

                            // hoverColor: tileController.isSelected?AppColors.white:AppColors.bluecolor,
                            selectedTileColor: purchaseTileController.isSelected
                                ? AppColors.bluecolor
                                : AppColors.blackcolor,
                            selectedColor: purchaseTileController.isSelected
                                ? AppColors.white
                                : AppColors.blackcolor,
                          );
                        }),
                      ]),
                  CustomListTileWidget(
                    leading: SvgPicture.asset(
                      AppAsset.reports,
                      fit: BoxFit.cover,
                    ),
                    splashColor: AppColors.bluecolor,
                    hoverColor: AppColors.bluecolor,
                    title: const CustomDrawerListTileTitleWhiteTextWidget(
                      text: "Reports",
                    ),
                    onTap: () {
                      Get.toNamed(RoutesName.reportspage);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //accounting solution:
                  const CustomDrawerTitleWhiteTextWidget(
                    text: "ACCOUNTING SOLUTIONS",
                  ),
                  // const CustomTextWidget(
                  //   text: "ACCOUNTING SOLUTIONS",
                  //   color: AppColors.lightgreycolor,
                  //   fontWeight: FontWeight.w400,
                  //   fontSize: 13,
                  // ),
                  CustomListTileWidget(
                    leading: SvgPicture.asset(
                      AppAsset.cashandbank,
                      fit: BoxFit.cover,
                    ),
                    hoverColor: AppColors.bluecolor,
                    splashColor: AppColors.bluecolor,
                    title: const CustomDrawerListTileTitleWhiteTextWidget(
                      text: "Cash & Bank",
                    ),
                    onTap: () {
                      Get.toNamed(RoutesName.cashandbankpage);
                    },

                    // selectedTileColor: AppColors.bluecolor,
                  ),
                  CustomListTileWidget(
                    leading: SvgPicture.asset(
                      AppAsset.einvoicing,
                      fit: BoxFit.cover,
                    ),

                    title: const CustomDrawerListTileTitleWhiteTextWidget(
                      text: "E-Invoicing",
                    ),
                    hoverColor: AppColors.bluecolor,
                    splashColor: AppColors.bluecolor,
                    selectedTileColor: AppColors.bluecolor,
                    onTap: () {
                      Get.toNamed(RoutesName.einvoicingpage);
                    },
                    // selectedColor: AppColors.bluecolor,
                  ),
                  CustomListTileWidget(
                    leading: SvgPicture.asset(
                      AppAsset.automtedbill,
                      fit: BoxFit.cover,
                    ),
                    hoverColor: AppColors.bluecolor,
                    splashColor: AppColors.bluecolor,
                    title: const CustomDrawerListTileTitleWhiteTextWidget(
                      text: "Automated Bills",
                    ),
                    selectedTileColor: AppColors.bluecolor,
                    onTap: () {
                      Get.toNamed(RoutesName.automatedbillspage);
                    },
                    // selectedColor: AppColors.bluecolor,
                  ),
                  CustomListTileWidget(
                    leading: SvgPicture.asset(
                      AppAsset.expense,
                      fit: BoxFit.cover,
                    ),
                    hoverColor: AppColors.bluecolor,
                    splashColor: AppColors.bluecolor,
                    title: const CustomDrawerListTileTitleWhiteTextWidget(
                      text: "Expenses",
                    ),
                    selectedTileColor: AppColors.bluecolor,
                    onTap: () {
                      Get.toNamed(
                        RoutesName.expensespage,
                      );
                    },
                    // selectedColor: AppColors.bluecolor,
                  ),
                  CustomListTileWidget(
                    leading: SvgPicture.asset(
                      AppAsset.posbilling,
                      fit: BoxFit.cover,
                    ),
                    hoverColor: AppColors.bluecolor,
                    splashColor: AppColors.bluecolor,

                    title: const CustomDrawerListTileTitleWhiteTextWidget(
                      text: "POS Billing",
                    ),
                    selectedTileColor: AppColors.bluecolor,
                    onTap: () {
                      Get.toNamed(RoutesName.posbillingpage);
                    },
                    // selectedColor: AppColors.bluecolor,
                  ),
                  height20,
                  //business tools:
                  const CustomDrawerTitleWhiteTextWidget(
                    text: "BUSINESS TOOLS",
                  ),
                  // const CustomTextWidget(
                  //   text: "BUSINESS TOOLS",
                  //   color: AppColors.lightgreycolor,
                  //   fontWeight: FontWeight.w400,
                  //   fontSize: 13,
                  // ),
                  CustomListTileWidget(
                    leading: const CustomDrawerDarkGreyIconWidget(
                      icon: Icons.attribution,
                    ),

                    title: const CustomDrawerListTileTitleWhiteTextWidget(
                        text: "Staff Attendance"),
                    hoverColor: AppColors.bluecolor,
                    splashColor: AppColors.bluecolor,
                    onTap: () {
                      Get.toNamed(
                        RoutesName.staffattendancepage,
                      );
                    },
                    // selectedColor: AppColors.bluecolor,
                  ),
                  CustomListTileWidget(
                      leading: const CustomDrawerDarkGreyIconWidget(
                        icon: Icons.person,
                      ),
                      hoverColor: AppColors.bluecolor,
                      splashColor: AppColors.bluecolor,
                      title: const CustomDrawerListTileTitleWhiteTextWidget(
                          text: "Manage User"),
                      selectedTileColor: AppColors.bluecolor,
                      onTap: () {
                        Get.toNamed(RoutesName.manageuserpage);
                      }
                      // selectedColor: AppColors.bluecolor,
                      ),
                  CustomListTileWidget(
                    leading: const CustomDrawerDarkGreyIconWidget(
                        icon: Icons.store_sharp),
                    hoverColor: AppColors.bluecolor,
                    splashColor: AppColors.bluecolor,
                    title: const CustomDrawerListTileTitleWhiteTextWidget(
                        text: "Online Store"),
                    selectedTileColor: AppColors.bluecolor,
                    onTap: () {
                      Get.toNamed(RoutesName.onlinestorepage);
                    },
                    // selectedColor: AppColors.bluecolor,
                  ),

                  CustomListTileWidget(
                    leading: const CustomDrawerDarkGreyIconWidget(
                        icon: Icons.account_balance_wallet),
                    hoverColor: AppColors.bluecolor,
                    splashColor: AppColors.bluecolor,
                    title: const CustomDrawerListTileTitleWhiteTextWidget(
                      text: "Apply For Loan",
                    ),
                    selectedTileColor: AppColors.bluecolor,
                    onTap: () {
                      Get.toNamed(
                        RoutesName.applyforloan_page,
                      );
                    },
                    // selectedColor: AppColors.bluecolor,
                  ),
                  height20,
                  RefernowButtonwidget(
                    onTap: () {},
                  ),
                  // CustomContainerWidget(
                  //   height: MediaQuery.of(context).size.height * 0.200,
                  //   width:  MediaQuery.of(context).size.width,
                  //   color: AppColors.bluedarkgradient,
                  //
                  // )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
