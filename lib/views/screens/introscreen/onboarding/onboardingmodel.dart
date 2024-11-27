// OnBoarding content Model
import '../../../../utills/app_assets.dart';

class OnBoard {
  final String image, title, description;

  OnBoard({
    required this.image,
    required this.title,
    required this.description,
  });
}

// OnBoarding content list
final List<OnBoard> demoData = [
  OnBoard(
    image: AppAsset.intro1,
    title: "Drag & Drop document",
    description:
    "To sign a document, drag and drop it into the area above or click on the link to choose your file. Your document will appear on the screen.",
  ),
  OnBoard(
    image:  AppAsset.intro2,
    title: "Sign document online",
    description:
    "Click on the document to display a signature dialog, select a signature type, create your digital signature and add it to the document.",
  ),
  OnBoard(
    image:  AppAsset.intro3,
    title: "Download document",
    description:
    "Save your changes by clicking on DONE, then select DOWNLOAD DOCUMENT to securely download it via protected SSL connection.",
  ),

];