// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:sofomo/core/api/api_description.dart' as _i4;
import 'package:sofomo/features/repository_details/data/repositories/repository_details_repository.dart'
    as _i7;
import 'package:sofomo/features/repository_details/domain/use_cases/get_details.dart'
    as _i9;
import 'package:sofomo/features/repository_details/presentation/notifiers/repository_details_notifier.dart'
    as _i10;
import 'package:sofomo/features/search/data/repositories/search_repository.dart'
    as _i5;
import 'package:sofomo/features/search/domain/use_cases/find_repositories.dart'
    as _i6;
import 'package:sofomo/features/search/presentation/notifier/search_page_notifier.dart'
    as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioInjectionModule = _$DioInjectionModule();
    gh.singleton<_i3.Dio>(dioInjectionModule.dio);
    gh.singleton<_i4.RestClient>(_i4.RestClient.getInstance(gh<_i3.Dio>()));
    gh.singleton<_i5.SearchRepository>(
        _i5.SearchRepository(gh<_i4.RestClient>()));
    gh.singleton<_i6.FindRepositories>(
        _i6.FindRepositories(gh<_i5.SearchRepository>()));
    gh.singleton<_i7.RepositoryDetailsRepository>(
        _i7.RepositoryDetailsRepository(gh<_i4.RestClient>()));
    gh.factory<_i8.SearchPageNotifier>(
        () => _i8.SearchPageNotifier(gh<_i6.FindRepositories>()));
    gh.singleton<_i9.GetDetails>(
        _i9.GetDetails(gh<_i7.RepositoryDetailsRepository>()));
    gh.factory<_i10.RepositoryDetailsNotifier>(
        () => _i10.RepositoryDetailsNotifier(gh<_i9.GetDetails>()));
    return this;
  }
}

class _$DioInjectionModule extends _i4.DioInjectionModule {}
