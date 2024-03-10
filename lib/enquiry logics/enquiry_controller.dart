import 'enquiry_logic.dart';
import 'user_model.dart';



class EnquiryController {
 EnquiryLogic enquiryLogic = EnquiryLogic();

  Future<void> enquiryControllerFunction  (
      {String? email, String? phoneNumber, String? query}) async {
    final UserEnquiryModel enquiry = UserEnquiryModel(
        enquiry: query ?? "",
        phoneNumber: phoneNumber ?? "",
        userEmail: email ?? "");

     await  enquiryLogic.enquiryRegister(enquiry);
    print("code reached to controller");
  }
}
