part of 'program_bloc.dart';

@freezed
class ProgramState with _$ProgramState {
  const factory ProgramState.initial() = _Initial;
  const factory ProgramState.isLoading() = _IsLoading;
  const factory ProgramState.isError(NetworkExceptions networkExceptions) =
      _IsError;

  const factory ProgramState.loadedShow(Program post) = _LoadedShow;
}
