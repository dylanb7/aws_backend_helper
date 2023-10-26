import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:aws_backend_helper/models/ModelProvider.dart';

configureAmplifyMobilePlugins() async {
  try {
    final dataStore = AmplifyDataStore(modelProvider: ModelProvider.instance);

    final api = AmplifyAPI();

    final auth = AmplifyAuthCognito();

    await Amplify.addPlugins([api, dataStore, auth]);
  } catch (e) {
    safePrint('Error configuring Amplify: $e');
  }
}
