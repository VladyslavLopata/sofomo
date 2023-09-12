import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:sofomo/core/di/di.config.dart';

final injector = GetIt.instance;

@InjectableInit()
void setupDependencyInjection() => injector.init();
