import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sofomo/features/repository_details/domain/models/full_repository_details.dart';

part 'repository_details_state.freezed.dart';

@freezed
class RepositoryDetailsState with _$RepositoryDetailsState {
  const factory RepositoryDetailsState.loading() =
      LoadingRepositoryDetailsState;
  const factory RepositoryDetailsState.data(FullRepositoryDetails details) =
      DataRepositoryDetailsState;
  const factory RepositoryDetailsState.error() = ErrorRepositoryDetailsState;
}
