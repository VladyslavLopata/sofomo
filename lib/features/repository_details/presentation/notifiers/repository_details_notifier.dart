import 'package:injectable/injectable.dart';
import 'package:sofomo/core/value_notifiers/logging_value_notifier.dart';
import 'package:sofomo/features/repository_details/domain/use_cases/get_details.dart';
import 'package:sofomo/features/repository_details/presentation/notifiers/repository_details_state.dart';

@injectable
class RepositoryDetailsNotifier
    extends LoggingValueNotifier<RepositoryDetailsState> {
  RepositoryDetailsNotifier(
    this._getDetails,
  ) : super(const RepositoryDetailsState.loading());

  final GetDetails _getDetails;

  Future<void> initialize(
    String login,
    String repositoryName,
  ) async {
    value = const RepositoryDetailsState.loading();
    final result = await _getDetails(
      login,
      repositoryName,
    );

    if (result == null) {
      value = const RepositoryDetailsState.error();
      return;
    }

    value = RepositoryDetailsState.data(result);
  }
}
