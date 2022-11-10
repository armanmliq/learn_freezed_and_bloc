//////////////////////////////////////////////////BLOC///////////////////////////////////////////
import 'dart:async';
import 'package:arstate/arstate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learn_freezed_1/models/model_program/program.dart';

import '../../../repository/program.dart';

part 'program_bloc.freezed.dart';
part 'program_event.dart';
part 'program_state.dart';

class ProgramBloc extends Bloc<ProgramEvent, ProgramState> {
  ProgramBloc() : super(const _Initial()) {
    on<ProgramEvent>(_onProgramEvent);
  }

  Future<void> _onProgramEvent(
      ProgramEvent event, Emitter<ProgramState> emit) async {
    await event.when(
      started: () async {},
      show: (int id) async {
        emit(_getLoadingState());
        final ApiResult<Program> apiResult = await ProgramRepository().show(id);
        apiResult.when(
          success: (Program data) async {
            print(data);
            emit(ProgramState.loadedShow(data));
          },
          failure: (NetworkExceptions error) async {
            emit(_getErrorState(error));
          },
        );
      },
    );
  }

  ProgramState _getErrorState(NetworkExceptions networkExceptions) {
    return ProgramState.isError(networkExceptions);
  }

  ProgramState _getLoadingState() {
    return const ProgramState.isLoading();
  }
}
