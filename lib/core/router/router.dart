import 'package:go_router/go_router.dart';
import 'package:sofomo/features/repository_details/presentation/repository_details_page.dart';
import 'package:sofomo/features/search/presentation/search_page.dart';

final router = GoRouter(
  initialLocation: SearchPage.path,
  routes: [
    GoRoute(
      path: SearchPage.path,
      name: SearchPage.name,
      builder: (_, __) => const SearchPage(),
    ),
    GoRoute(
      path: RepositoryDetailsPage.path,
      name: RepositoryDetailsPage.name,
      builder: (_, state) => RepositoryDetailsPage(
        login: state.pathParameters['login']!,
        repositoryName: state.pathParameters['repositoryName']!,
      ),
    ),
  ],
);
