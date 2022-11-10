part of 'program_bloc.dart';

@freezed
class ProgramEvent with _$ProgramEvent {
  const factory ProgramEvent.started() = _Started;

  const factory ProgramEvent.show(int id) = _Show;
}
