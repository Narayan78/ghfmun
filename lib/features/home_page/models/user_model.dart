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

class EnquiryState {
  final bool isError;
  final bool isSuccess;
  final bool isLoading;
  final List enquiryList;
  final String errorMessage;

  EnquiryState(
      {required this.enquiryList,
      required this.errorMessage,
      required this.isError,
      required this.isLoading,
      required this.isSuccess});

  EnquiryState.initialState()
      : enquiryList = [],
        errorMessage = "",
        isError = false,
        isLoading = false,
        isSuccess = false;

  EnquiryState copyWith({
    bool? isError,
    bool? isSuccess,
    bool? isLoading,
    List? enquiryList,
    String? errorMessage,
  }) {
    return EnquiryState(
        enquiryList: enquiryList ?? this.enquiryList,
        errorMessage: errorMessage ?? this.errorMessage,
        isError: isError ?? this.isError,
        isLoading: isLoading ?? this.isLoading,
        isSuccess: isSuccess ?? this.isSuccess);
  }
}
