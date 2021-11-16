import 'package:hive/hive.dart';
import 'package:companion/hive_helper/hive_types.dart';
import 'package:companion/hive_helper/hive_adapters.dart';
import 'package:companion/hive_helper/fields/login_model_fields.dart';

part 'login_model.g.dart';

@HiveType(typeId: HiveTypes.loginModel, adapterName: HiveAdapters.loginModel)
class LoginModel extends HiveObject {
  @HiveField(LoginModelFields.email)
  final String? email;
  @HiveField(LoginModelFields.password)
  final String? password;
  LoginModel({
    this.email,
    this.password,
  });
}
