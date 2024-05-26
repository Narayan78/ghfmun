import 'package:dio/dio.dart';

void sendEmail(String to, String subject, String htmlContent) async {
  try {
    // Replace 'http://localhost:3000' with your server URL
    String url = 'www.ghfmun.org/sendMail';

    // Create Dio instance
    Dio dio = Dio();

    // Define request parameters
    Map<String, dynamic> data = {
      'to': to,
      'subject': subject,
      'htmlContent': htmlContent,
    };

    // Send POST request
    Response response = await dio.post(
      url,
      data: data,
    );

    // Handle response
    if (response.statusCode == 200) {
      // print('Email sent successfully');
    } else {
      // print('Failed to send email');
    }
  } catch (error) {
    // print('Error sending email: $error');
  }
}
