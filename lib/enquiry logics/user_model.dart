class UserEnquiryModel {
  final String userEmail;
  final String phoneNumber;
  final String enquiry;

  UserEnquiryModel(
      {required this.enquiry,
      required this.phoneNumber,
      required this.userEmail});

  Map<String, dynamic> toMap() {
    return {
      'userEmail': userEmail,
      'phoneNumber': phoneNumber,
      'enquiry': enquiry
    };
  }
}
