import 'package:vtracku_s_application6/data/models/authenticatePost/post_authenticate_post_resp.dart';

import '../apiClient/api_client.dart';

/// Repository class for managing API requests.
///
/// This class provides a simplified interface for making the
/// API request using the [ApiClient] instance
class Repository {
  final _apiClient = ApiClient();

  Future<PostAuthenticatePostResp> authenticatePost({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    return await _apiClient.authenticatePost(
      headers: headers,
      requestData: requestData,
    );
  }
}
