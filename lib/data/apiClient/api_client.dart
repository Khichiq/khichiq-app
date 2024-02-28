import 'package:dio/dio.dart';
import 'package:vtracku_s_application6/core/app_export.dart';
import 'package:vtracku_s_application6/core/utils/progress_dialog_utils.dart';
import 'package:vtracku_s_application6/data/models/authenticatePost/post_authenticate_post_resp.dart';

import 'network_interceptor.dart';

class ApiClient {
  factory ApiClient() {
    return _apiClient;
  }

  ApiClient._internal();

  var url = "http://%7B%7Bbase_url%7D%7D:8080";

  static final ApiClient _apiClient = ApiClient._internal();

  final _dio = Dio(BaseOptions(
      connectTimeout: const Duration(seconds: 60),
      headers: {
        "Authorization": "Bearer {{token}}",
        "Content-Type": "application/json"
      }))
    ..interceptors.add(NetworkInterceptor());

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await NetworkInfo().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  /// is `true` when the response status code is between 200 and 299
  ///
  /// user can modify this method with custom logics based on their API response
  bool _isSuccessCall(Response response) {
    if (response.statusCode != null) {
      return response.statusCode! >= 200 && response.statusCode! <= 299;
    }
    return false;
  }

  /// Performs API call for http://{{base_url}}:8080/api/v1/auth/authenticate
  ///
  /// Sends a POST request to the server's 'http://{{base_url}}:8080/api/v1/auth/authenticate' endpoint
  /// with the provided headers and request data
  /// Returns a [PostAuthenticatePostResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostAuthenticatePostResp> authenticatePost({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      var response = await _dio.post(
        'http://{{base_url}}:8080/api/v1/auth/authenticate',
        data: requestData,
        options: Options(headers: headers),
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostAuthenticatePostResp.fromJson(response.data);
      } else {
        throw response.data != null
            ? PostAuthenticatePostResp.fromJson(response.data)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }
}
