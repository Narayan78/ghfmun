import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ghfmun/features/home_page/repository/enquiry_repo.dart';
import '../models/user_model.dart';

final enquiryControllerProvider = StateNotifierProvider((ref) =>
    EnquiryController(
        EnquiryState.initialState(), ref.read(enquiryRepositoryProvider)));

class EnquiryController extends StateNotifier<EnquiryState> {
  final EnquiryRepository enquiryRepository;

  EnquiryController(
    super.state,
    this.enquiryRepository,
  ){
    //sendEnquiry(email, phoneNumber, query)
  }

  Future<void> sendEnquiry(
      String email, String phoneNumber, String query) async {
      state = state.copyWith(isLoading: true);
    final response = await enquiryRepository.postEnquiry(
      email: email,
      phoneNumber: phoneNumber,
      query: query,
    );

    state = response.fold(
      (l) => state.copyWith(
        errorMessage: l,
        isError: true,
        isLoading: false,
        enquiryList: [],
        isSuccess: false,
      ),
      (r) => state.copyWith(
        isError: false,
        isLoading: false,
        isSuccess: true,
        enquiryList: [],
        errorMessage: r,
      ),
    );
  }
}
