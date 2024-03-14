import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final enquiryRepositoryProvider = Provider((ref) => EnquiryRepository());


class EnquiryRepository {
  static final dio = Dio(BaseOptions(
    baseUrl: "https://ghfmun.org",
    headers: {
      'Content-Type': 'application/json',
    },
  ));

  Future<Either<String , String>> postEnquiry(
     { String? email, String? phoneNumber, String? query}) async {
    try {
      final response = await dio.post(
        "/submitData",
        data: {
          "userEmail": email ?? "",
          "phoneNumber": phoneNumber ?? "",
          "enquiry": query ?? "",
        },
      );
      return Right(response.data);
    } catch (e) {
       return Left(e.toString());
    }
  }
}
