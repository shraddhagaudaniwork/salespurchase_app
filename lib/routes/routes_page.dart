import 'package:get/get.dart';
import 'package:salespurchase_app/routes/route_name.dart';
import 'package:salespurchase_app/views/screens/createaccount/signup.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/parties/addparty_page.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/parties/widget/partydetail_page.dart';
import 'package:salespurchase_app/views/screens/introscreen/introscreen1.dart';
import 'package:salespurchase_app/views/screens/introscreen/introscreen2.dart';
import 'package:salespurchase_app/views/screens/introscreen/introscreen3.dart';
import 'package:salespurchase_app/views/screens/introscreen/onboarding.dart';
import 'package:salespurchase_app/views/screens/login/createnewpassword/createnewpassword_page.dart';
import 'package:salespurchase_app/views/screens/login/login/loginpage.dart';
import 'package:salespurchase_app/views/screens/login/password/password_page.dart';
import 'package:salespurchase_app/views/screens/login/password/resetpassword_page.dart';
import 'package:salespurchase_app/views/screens/login/verificationcode/verificationcode.dart';
import 'package:salespurchase_app/views/screens/splashscreen/splash_screen.dart';
import '../components/homecomponent/home_component.dart';
import '../components/homecomponent/latestranscation.dart';
import '../components/purchasecomponent/purchase_component.dart';
import '../components/salescomponent/sales_component.dart';
import '../components/settingcomponent/setting_component.dart';
import '../views/screens/home/drawer/accountingsolution/automatedbills/automatedbills_page.dart';
import '../views/screens/home/drawer/accountingsolution/cashandbank_page.dart';
import '../views/screens/home/drawer/accountingsolution/e-invoicing/e-invoicing_page.dart';
import '../views/screens/home/drawer/accountingsolution/expenses/expenses_page.dart';
import '../views/screens/home/drawer/accountingsolution/posbilling_page.dart';
import '../views/screens/home/drawer/businessolution/applyforloan_page.dart';
import '../views/screens/home/drawer/businessolution/manageuser_page.dart';
import '../views/screens/home/drawer/businessolution/onlinestore_page.dart';
import '../views/screens/home/drawer/businessolution/staffattendance/staffattendance_page.dart';
import '../views/screens/home/drawer/general/items/inventory/inventory_page.dart';
import '../views/screens/home/drawer/general/items/warehouse/warehouse_page.dart';
import '../views/screens/home/drawer/general/parties/parties.dart';
import '../views/screens/home/drawer/general/purchase/debitnotes/debitnotes_page.dart';
import '../views/screens/home/drawer/general/purchase/purchaseout/paymentout_page.dart';
import '../views/screens/home/drawer/general/purchase/purchaseinvoice/purchaseinvoice_page.dart';
import '../views/screens/home/drawer/general/purchase/purchaseorders/purchaseorders_page.dart';
import '../views/screens/home/drawer/general/purchase/purchasereturn/purchasereturn_page.dart';
import '../views/screens/home/drawer/general/reports/reports_page.dart';
import '../views/screens/home/drawer/general/sales/salesreturn/Salesreturn_page.dart';
import '../views/screens/home/drawer/general/sales/creditnotes/creditnotes_page.dart';
import '../views/screens/home/drawer/general/sales/deliverychallan/deliverychallan_page.dart';
import '../views/screens/home/drawer/general/sales/paymentin/paymentin_page.dart';
import '../views/screens/home/drawer/general/sales/performainvoice/performainvoice_page.dart';
import '../views/screens/home/drawer/general/sales/quotation/quotation_page.dart';
import '../views/screens/home/drawer/general/sales/salesinvoice/salesinvoice_page.dart';
import '../views/screens/home/home_page.dart';

class RoutesPage {
  static List<GetPage> pages = [
    GetPage(name: RoutesName.homepage, page: () => const Home_page()),
    GetPage(name: RoutesName.homecomponent, page: () => const HomeComponent()),

    //Parties in Drawer:
    GetPage(name: RoutesName.partiespage, page: () => const Parties_page()),
    GetPage(name: RoutesName.addpartiespage, page: () => const AddPartiespage()),
    GetPage(name: RoutesName.partydetailpage, page: () => const PartydetailPage()),

    //GENERAL:
    //Items in Drawer:
    GetPage(name: RoutesName.inventorypage, page: () => const Inventory_page()),
    GetPage(name: RoutesName.warehousepage, page: () => const Warehouse_page()),

    //Sales in Drawer:
    GetPage(
      name: RoutesName.salesinvoicepage,
      page: () => const SalesInvoice_page(),
    ),
    GetPage(name: RoutesName.quotationpage, page: () => const Quotation_page()),
    GetPage(name: RoutesName.paymentinpage, page: () => const PaymentIn_page()),
    GetPage(
        name: RoutesName.salesreturnpage, page: () => const SalesReturn_page()),
    GetPage(
        name: RoutesName.creditnotesepage,
        page: () => const CreditNotes_page()),
    GetPage(
        name: RoutesName.deliverychallanpage,
        page: () => const DeliveryChallan_page()),
    GetPage(
        name: RoutesName.performainvoicepage,
        page: () => const Performainvoice_page()),
    GetPage(
        name: RoutesName.salescomponent, page: () => const SalesComponent()),
    //sales component

    //purchase in Drawer:
    GetPage(
        name: RoutesName.purchaseinvoicepage,
        page: () => const PurchaseInvoice_page()),
    GetPage(
        name: RoutesName.paymentoutepage, page: () => const PaymentOut_page()),
    GetPage(
        name: RoutesName.purchasereturnpage,
        page: () => const PurchaseReturn_page()),
    GetPage(
        name: RoutesName.debitnotespage, page: () => const DebitNotes_page()),
    GetPage(
        name: RoutesName.purchaseorderspage,
        page: () => const PurchaseOrders_page()),
    GetPage(
        name: RoutesName.purchasecomponent,
        page: () => const PurchaseComponent()),
    // purchase component

    //Reports in Drawer:
    GetPage(name: RoutesName.reportspage, page: () => const Reports_page()),

    //ACCOUNTING SOLUTION:
    GetPage(
        name: RoutesName.cashandbankpage, page: () => const CashAndBank_page()),
    GetPage(
        name: RoutesName.einvoicingpage, page: () => const EInvoicing_page()),
    GetPage(
        name: RoutesName.automatedbillspage,
        page: () => const AutomatedBills_page()),
    GetPage(name: RoutesName.expensespage, page: () => const Expenses_page()),
    GetPage(
        name: RoutesName.posbillingpage, page: () => const PosBilling_page()),

    //BUSINESS TOOLS:
    GetPage(
        name: RoutesName.staffattendancepage,
        page: () => const StaffAttendance_page()),
    GetPage(
        name: RoutesName.manageuserpage, page: () => const ManageUser_page()),
    GetPage(
        name: RoutesName.onlinestorepage, page: () => const OnlineStore_page()),
    GetPage(
        name: RoutesName.applyforloan_page,
        page: () => const ApplyForLoan_page()),

    //seeting :
    GetPage(
        name: RoutesName.settingcomponent,
        page: () => const SettingComponent()),

    //splashscrren:
    GetPage(name: RoutesName.splashshscreen, page: () => const SplashScreen()),

    //introscreen:
    GetPage(name: RoutesName.introscreen1, page: () => const Introscreen1()),
    GetPage(name: RoutesName.introscreen2, page: () => const Introscreen2()),
    GetPage(name: RoutesName.introscreen3, page: () => const Introscreen3()),
    GetPage(name: RoutesName.onboarding, page: () => const Onboarding()),

    //Signup Page:
    GetPage(name: RoutesName.signuppage, page: () => const SignUpPage()),

    //Login Page:
    GetPage(name: RoutesName.loginpage, page: () => const LoginPage()),

    //Password Page:
    GetPage(name: RoutesName.passwordpage, page: () => const PasswordPage()),

    //Reset Password:
    GetPage(name: RoutesName.resetpasswordpage, page: () => const ResetpasswordPage()),

    //Resend Code:
    GetPage(name: RoutesName.verificationcodepage ,page: () => const VerificationCodePage()),

    //Create New Password:
    GetPage(name: RoutesName.createnewpassword ,page: () => const CreateNewPasswordPage()),


   // Latest Transaction:
    GetPage(name: RoutesName.latestransaction ,page: () => const LatestTransactionPage()),


  ];
}
