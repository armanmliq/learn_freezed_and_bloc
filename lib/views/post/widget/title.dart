import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../logic/bloc/program/program_bloc.dart';
import '../../global/widget/appbar_title_text.dart';

class TitleAppbar extends StatelessWidget {
  const TitleAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProgramBloc, ProgramState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => Container(),
          loadedShow: (program) => AppbarTitleText(titleText: program.title),
        );
      },
    );
  }
}
