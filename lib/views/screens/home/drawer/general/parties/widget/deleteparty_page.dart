// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:salespurchase_app/views/screens/home/drawer/general/parties/party_controller.dart';
//
// class DeletePartyPage extends StatelessWidget {
//   final TextEditingController idController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Delete Party'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: idController,
//               decoration: const InputDecoration(labelText: 'Party ID'),
//             ),
//             const SizedBox(height: 20),
//             Obx(() {
//               if (partyDeleteApiController.isLoading.value) {
//                 return const CircularProgressIndicator();
//               } else {
//                 return ElevatedButton(
//                   onPressed: () {
//                     final id = idController.text.trim();
//                     if (id.isEmpty) {
//                       Get.snackbar("Error", "Please enter a valid ID.");
//                       return;
//                     }
//                     partyDeleteApiController.deleteParty(id);
//                   },
//                   child: const Text('Delete Party'),
//                 );
//               }
//             }),
//           ],
//         ),
//       ),
//     );
//   }
// }
