import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/utills/app_colors.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/parties/party_controller.dart';
import 'package:salespurchase_app/widgets/appbar/custom_appbartextwidget.dart';
import 'package:salespurchase_app/widgets/appbar/custom_appbarwidget.dart';

class AddPartiespage extends StatelessWidget {
  const AddPartiespage({super.key});

  @override
  Widget build(BuildContext context) {
    PartyPostApiController partyPostApiController =
        Get.put(PartyPostApiController());
    return Scaffold(
      appBar: const CustomAppBarWidget(
        title: CustomAppBarTextWidget(
          text: "Add Parties Page",
        ),
      ),
      backgroundColor: AppColors.backgroundcolor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: partyPostApiController.formkey,
          child: Column(
            children: [


              TextFormField(
                controller: partyPostApiController.nameController,
                decoration: const InputDecoration(
                  labelText: 'Party Name',
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Please enter name";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: partyPostApiController.companynameController,
                decoration: const InputDecoration(
                  labelText: 'Company Name',
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Please company name";
                  }

                  return null;
                },
              ),
              TextFormField(
                controller: partyPostApiController.emailController,
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Please enter email";
                  } else if (val.contains('@') && val.contains('.com')) {
                    return "Please enter your email";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
              ),
              TextFormField(
                controller: partyPostApiController.phonenumberController,
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Please enter phone number";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: partyPostApiController.receivablesController,
                decoration: const InputDecoration(
                  labelText: 'Receivables',
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Please enter receivable";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: partyPostApiController.unusedcreditsController,
                decoration: const InputDecoration(
                  labelText: 'Unused credits',
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Please enter unused credits";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(
                () => partyPostApiController.isLoading.value
                    ? const CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: () {
                          if (partyPostApiController.formkey.currentState!
                              .validate()) {
                            partyPostApiController.formkey.currentState!.save();
                            final partyData = {
                              "name":
                                  partyPostApiController.nameController.text,
                              "companyname": partyPostApiController
                                  .companynameController.text,
                              "email":
                                  partyPostApiController.emailController.text,
                              "phonenumber": partyPostApiController
                                  .phonenumberController.text,
                              "receivables": partyPostApiController
                                  .receivablesController.text,
                              "unusedcredits": partyPostApiController
                                  .unusedcreditsController.text,
                            };
                            print(
                              "Sending Party Data: $partyData",
                            ); // Debugging
                            partyPostApiController.createParty(
                              partyData,
                            );
                            // Get.snackbar(
                            //   'success',
                            //   "add party successfully",
                            // );
                          } else {
                            Get.snackbar("Not Valid", "Please enter details");
                          }

                          // if (partyPostApiController
                          //         .nameController.text.isEmpty &&
                          //     partyPostApiController
                          //         .companynameController.text.isEmpty &&
                          //     partyPostApiController
                          //         .phonenumberController.text.isEmpty &&
                          //     partyPostApiController
                          //         .emailController.text.isEmpty &&
                          //     partyPostApiController
                          //         .unusedcreditsController.text.isEmpty &&
                          //     partyPostApiController
                          //         .receivablesController.text.isEmpty) {
                          //   Get.snackbar("Fill", "Please fil this details..");
                          // } else {
                          //   final partyData = {
                          //     "name": partyPostApiController.nameController.text,
                          //     "companyname": partyPostApiController
                          //         .companynameController.text,
                          //     "email":
                          //         partyPostApiController.emailController.text,
                          //     "phonenumber": partyPostApiController
                          //         .phonenumberController.text,
                          //     "receivables": partyPostApiController
                          //         .receivablesController.text,
                          //     "unusedcredits": partyPostApiController
                          //         .unusedcreditsController.text,
                          //
                          //   };
                          //   print(
                          //     "Sending Party Data: $partyData",
                          //   ); // Debugging
                          //   partyPostApiController.createParty(
                          //     partyData,
                          //   );
                          // }
                        },
                        child: const Text(
                          'Create Party',
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
