import 'package:hive/hive.dart';
import 'package:companion/app/data/models/login_model.dart';

void registerAdapters() {
  Hive.registerAdapter(LoginModelAdapter());
}
