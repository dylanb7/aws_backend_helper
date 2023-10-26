import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:aws_backend_helper/models/ModelProvider.dart';

addAmplifyCrossPugins() async {
  try {
    final api = AmplifyAPI(modelProvider: ModelProvider.instance);

    final auth = AmplifyAuthCognito();

    await Amplify.addPlugins([api, auth]);
  } catch (e) {
    safePrint('Error configuring Amplify: $e');
  }
}
