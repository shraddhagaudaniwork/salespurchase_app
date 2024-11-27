import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salespurchase_app/components/homecomponent/homecomponent_controller.dart';
import 'package:salespurchase_app/responsive/sizeconfig.dart';
import 'package:salespurchase_app/views/screens/login/widgets/loginbutton.dart';
import '../../commoncomponent/commontext/commontext.dart';
import '../../utills/app_colors.dart';
import '../../utills/static_decoration.dart';
import '../../widgets/custom_textformfieldwidget.dart';
import '../../widgets/custom_textwidget.dart';

class LatestTransactionPage extends StatelessWidget {
  const LatestTransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data for the ListView
    final List<String> items = List.generate(
      20,
      (index) => "Item $index",
    );

    HomeComponentController homeComponentController =
        Get.put(HomeComponentController());

    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: SizeConfig().getPadding(
                left: 16,
                right: 16,
                top: 20,
                bottom: 16,
              ),
              child: ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (rect) => const LinearGradient(
                  colors: [
                    AppColors.bluegradient,
                    AppColors.bluecolor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ).createShader(rect),
                child: CustomTextWidget(
                  text: "Latest Transaction",
                  color: AppColors.bluegradient,
                  fontSize: 16,
                  fontWeight: fontWeight500,
                ),
              ),
            ),
            Padding(
              padding: SizeConfig().getPadding(
                all: 16,
              ),
              child: CustomTextFormField(
                hintText: "Search",
                controller: homeComponentController.searchController,
                onChanged: (val) {
                  print(
                    "=================${homeComponentController.searchController}=================",
                  );
                },
              ),
            ),
            Padding(
              padding: SizeConfig().getPadding(
                all: 16,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  dividerThickness: 1,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  // dataRowColor: MaterialStateProperty.all(
                  //   Colors.white,
                  // ),
                  columns: const [
                    DataColumn(
                      label: CommonBlackTextTitleWidget(
                        text: "Date",
                      ),
                    ),
                    DataColumn(
                      label: CommonBlackTextTitleWidget(
                        text: "Invoice#",
                      ),
                    ),
                    DataColumn(
                      label: CommonBlackTextTitleWidget(
                        text: "Customer Id",
                      ),
                    ),
                  ],
                  rows: List.generate(
                    4,
                    (index) => const DataRow(
                      cells: [
                        DataCell(
                          CommonBlackTextWidget(
                            text: "7787495494",
                          ),
                        ),
                        DataCell(
                          CommonBlackTextWidget(
                            text: "778",
                          ),
                        ),
                        DataCell(
                          CommonBlackTextWidget(
                            text: "778",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            //see more see less in listview builder:
            Obx(
              () => Expanded(
                child: ListView.builder(
                  itemCount: homeComponentController.visibleItemCount.value,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        items[index],
                      ),
                    );
                  },
                ),
              ),
            ),
            Obx(
              () {
                return Padding(
                  padding: SizeConfig().getPadding(
                    all: 30,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      homeComponentController.toggleShowMore(
                        items.length,
                      );
                    },
                    child: LoginBlueButton(
                      text: homeComponentController.visibleItemCount.value ==
                              homeComponentController.initialItemCount
                          ? "See More"
                          : "See Less",
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
