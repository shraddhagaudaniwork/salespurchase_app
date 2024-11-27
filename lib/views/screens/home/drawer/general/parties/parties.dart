import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/parties/party_controller.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/parties/widget/parties_container.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/parties/widget/parties_table.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/parties/widget/parties_topheader.dart';
import 'package:salespurchase_app/widgets/table/commontablewidget.dart';
import '../../../../../../commoncomponent/commontext/commontext.dart';
import '../../../../../../components/homecomponent/drawer/widgets/drawercomponent.dart';
import '../../../../../../responsive/sizeconfig.dart';
import '../../../../../../routes/route_name.dart';
import '../../../../../../utills/app_colors.dart';
import '../../../../../../utills/static_decoration.dart';
import '../../../../../../widgets/appbar/custom_appbartextwidget.dart';
import '../../../../../../widgets/appbar/custom_appbarwidget.dart';
import '../../../navigation/widgets/bottomnavigationbar_widget.dart';
import '../../../widgets/floatingactionbutton_widget.dart';
import 'controller/parties_controller.dart';
import 'models/parties_model.dart';

class Parties_page extends StatefulWidget {
  const Parties_page({super.key});

  @override
  State<Parties_page> createState() => _Parties_pageState();
}

class _Parties_pageState extends State<Parties_page> {
  @override
  // late Future<PartyModel?> party;
  PartyController partyController = Get.put(PartyController());
  PartyEditApiController partyEditApiController =
      Get.put(PartyEditApiController());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // final PartiesController partiesController = Get.put(PartiesController());

  // void initState() {
  //   party = partiesController.fetchParties();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // return ResponsiveLayoutClass(
    //     mobileView: mobileView(), desktopView: desktopView());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.backgroundcolor,
      drawer: const DrawerComponents(),
      appBar: const CustomAppBarWidget(
        title: CustomAppBarTextWidget(text: "Parties"),
      ),

      // body: SingleChildScrollView(
      //   physics: const BouncingScrollPhysics(),
      //   child: Padding(
      //     padding: SizeConfig().getPadding(all: 16),
      //     child: Column(
      //       mainAxisSize: MainAxisSize.min,
      //       children: [
      //         //parties page Container:sq
      //         const PartiesPageContainer(),
      //         // BlueContainerWidget(
      //         //   padding: padding16,
      //         //   width: double.infinity,
      //         //   // height: 100.h,
      //         //   // width: 400.w,
      //         //   child: Column(
      //         //     crossAxisAlignment: CrossAxisAlignment.start,
      //         //     children: [
      //         //       CustomTextWidget(
      //         //         text: "27",
      //         //         color: AppColors.white,
      //         //         fontWeight: fontWeightbold,
      //         //         fontSize: 20,
      //         //       ),
      //         //       height05,
      //         //       CustomTextWidget(
      //         //         text: "All Parties",
      //         //         color: AppColors.white,
      //         //         fontSize: 13,
      //         //         // fontWeight: fontWeightbold,
      //         //       ),
      //         //     ],
      //         //   ),
      //         // ),
      //         // height10,
      //         // SingleChildScrollView(
      //         //   scrollDirection: Axis.horizontal,
      //         //   child: Row(
      //         //     children: [
      //         //       const GreenContainerWidget(
      //         //         percentage: "32%",
      //         //         text1: '₹8,41,490.92',
      //         //         text2: 'collected',
      //         //       ),
      //         //       width10,
      //         //       const RedContainerWidget(
      //         //         percentage: "32%",
      //         //         text1: '₹8,41,490.92',
      //         //         text2: 'pay',
      //         //       ),
      //         //     ],
      //         //   ),
      //         // ),
      //         // height15,
      //
      //         // parties title and add party button and textformfield:
      //         const PartiesPageTopHeader(),
      //         // Row(
      //         //   children: [
      //         //     // text
      //         //     const CommonDarkGreyTextTitleWidget(
      //         //       text: "All Parties",
      //         //     ),
      //         //     width10,
      //         //     Expanded(
      //         //       flex: 12,
      //         //       child: CustomContainerWidget(
      //         //         padding: padding8,
      //         //         alignment: Alignment.center,
      //         //         // height: 40.h,
      //         //         // width: 100.w,
      //         //         color: AppColors.white,
      //         //         borderRadius: circular10BorderRadius,
      //         //         child: CustomTextFormField(
      //         //           borderRadius: 12,
      //         //           controller: partyController.searchController,
      //         //           onChanged: (val) {
      //         //             print(
      //         //                 "=================${partyController.searchController}========");
      //         //           },
      //         //         ),
      //         //       ),
      //         //     ),
      //         //   ],
      //         // ),
      //         // print("${SizeConfig.}")
      //
      //         Padding(
      //           padding: SizeConfig().getPadding(top: 15),
      //           child: const PartiesPageTable(),
      //         ),
      //
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

      // body: FutureBuilder(
      //     future: party,
      //     builder: (context, snapshot) {
      //       if (snapshot.hasError) {
      //         return Text("Error:${snapshot.hasError}");
      //       } else if (snapshot.hasData) {
      //         PartyModel? data = snapshot.data;
      //
      //         if (data == null) {
      //           return const Text("No data available");
      //         }
      //
      //         return ListView.builder(
      //             itemCount: data.parties.length,
      //             itemBuilder: (context, i) {
      //               return CommonTableWidget(
      //                 title1: "Name",
      //                 detail1: data.parties[i].name,
      //                 title2: "Company Name",
      //                 detail2: data.parties[i].companyname,
      //                 title3: "Email",
      //                 detail3: data.parties[i].email,
      //                 title4: "Phone Number",
      //                 detail4: data.parties[i].phonenumber.toString(),
      //               );
      //
      //             });
      //       }
      //       return const Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     }),

      body: Obx(() {
        if (partyController.alldata.value == null) {
          const Text("No Parties found");
        }

        if (partyController.isloading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        // Show user data once loaded
        return ListView.builder(
          itemCount: partyController.alldata.value?.parties.length,
          itemBuilder: (context, i) {
            var user = partyController.alldata.value?.parties[i];
            // return Text("${partyController.alldata.value?.parties[i].receivables}");
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CommonTableWidget(
                title1: "Name",
                detail1: user?.name,
                title2: "Company Name",
                detail2: user?.companyname,
                title3: "Email",
                detail3: user?.email,
                title4: "Phone Number",
                detail4: user?.phonenumber.toString(),
                title5: "Id",
                detail5: user?.id.toString(),
                deleteonpressedbutton: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: const Text("Confirm Delete"),
                      content: const Text(
                        "Are you sure you want to delete this party?",
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
                            partyController.deleteParty(
                              user!.id,
                            ); // Call delete function
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
                        "Are you sure you want to edit this party??",
                      ),
                      actions: [
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Please enter name";
                                  }
                                  return null;
                                },
                                controller:
                                    partyEditApiController.editnameController,
                                decoration:
                                    const InputDecoration(hintText: "Name"),
                              ),
                              TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Please enter company name";
                                  }
                                  return null;
                                },
                                controller: partyEditApiController
                                    .editcompanynameController,
                                decoration: const InputDecoration(
                                    hintText: "Company Name"),
                              ),
                              TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Please enter email";
                                  }
                                  return null;
                                },
                                controller:
                                    partyEditApiController.editemailController,
                                decoration:
                                    const InputDecoration(hintText: "Email"),
                              ),
                              TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Please enter phone number";
                                  }
                                  return null;
                                },
                                controller: partyEditApiController
                                    .editphonenumberController,
                                decoration: const InputDecoration(
                                    hintText: "Phone Number"),
                              ),
                              TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Please enter receivable";
                                  }
                                  return null;
                                },
                                controller: partyEditApiController
                                    .editreceivablesController,
                                decoration: const InputDecoration(
                                    hintText: "Receivable"),
                              ),
                              TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Please enter unused credits";
                                  }
                                  return null;
                                },
                                controller: partyEditApiController
                                    .editunusedcreditsController,
                                decoration: const InputDecoration(
                                    hintText: "Unused credit"),
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
                                "Edit",
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();
                                  final updateData = {
                                    "name": partyEditApiController
                                        .editnameController.text,
                                    "companyname": partyEditApiController
                                        .editcompanynameController.text,
                                    "email": partyEditApiController
                                        .editemailController.text,
                                    "phonenumber": partyEditApiController
                                        .editphonenumberController.text,
                                    "receivables": partyEditApiController
                                        .editreceivablesController.text,
                                    "unusedcredits": partyEditApiController
                                        .editunusedcreditsController.text,
                                  };
                                  partyEditApiController.updateParty(
                                    user!.id,
                                    updateData,
                                  );
                                  print(
                                    "Sending Update Data: $updateData",
                                  ); //
                                  Navigator.of(ctx).pop(); // Close the dialog
                                  // Call delete function
                                }
                              },
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
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => partyController.fetchPartiesData(),
      //   child: const Icon(Icons.refresh),
      // ),

      bottomNavigationBar: const BottomnavigationbarWidget(),
      floatingActionButton: FloatingactionaddbuttonWidget(
        onPressed: () {
          Get.toNamed(RoutesName.addpartiespage);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _confirmDelete(
      BuildContext context, String id, PartyController controller) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Confirm Delete"),
        content: const Text(
          "Are you sure you want to delete this party?",
        ),
        actions: [
          Column(
            children: [TextFormField()],
          ),
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
              partyController.deleteParty(id); // Call delete function
            },
          ),
        ],
      ),
    );
  }
}
