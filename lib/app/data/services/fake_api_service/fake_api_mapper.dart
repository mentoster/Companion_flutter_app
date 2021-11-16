import 'package:companion/app/data/models/user_model.dart';

import '../../models/models_generated/user_generated.dart';

class FakeApiMapper {
  static UserModel fromApi(UserGenerated userGenerated) {
    UserModel userModel = UserModel(
        userGenerated.name!,
        userGenerated.maidenName!,
        userGenerated.phoneW!,
        userGenerated.emailU!);
    return userModel;
  }
}
