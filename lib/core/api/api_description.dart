import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sofomo/features/repository_details/data/models/repository_details.dart';
import 'package:sofomo/features/search/data/models/repository.dart';
// Dart analyzer does not recognize it as a dep for some reason.
// ignore: depend_on_referenced_packages
import 'package:talker_dio_logger/talker_dio_logger.dart';

part 'api_description.g.dart';

@module
abstract class DioInjectionModule {
  @singleton
  Dio get dio => Dio()..interceptors.add(TalkerDioLogger());
}

@singleton
@RestApi(baseUrl: 'https://api.github.com')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @factoryMethod
  // Needed for DI
  // ignore: prefer_constructors_over_static_methods
  static RestClient getInstance(Dio dio) => RestClient(dio);

  @GET('/search/repositories')
  Future<RepositoryWrapper> getRepositories(
    @Query('q') String keyword,
    @Query('per_page') int perPage,
  );

  @GET('/repos/{owner}/{name}')
  Future<RepositoryDetails> getRepoDetails(
    @Path('owner') String login,
    @Path('name') String repositoryName,
  );

  @GET('/repos/{owner}/{name}/pulls')
  Future<List<PullRequest>> getPulls(
    @Path('owner') String login,
    @Path('name') String repositoryName,
    @Query('per_page') int perPage,
  );

  @GET('/repos/{owner}/{name}/issues')
  Future<List<Issue>> getIssues(
    @Path('owner') String login,
    @Path('name') String repositoryName,
    @Query('per_page') int perPage,
  );
}
