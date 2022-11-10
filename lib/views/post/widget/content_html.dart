import 'package:arx/widgets/common/html.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../logic/bloc/program/program_bloc.dart';

class ContentHtml extends StatelessWidget {
  const ContentHtml({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProgramBloc, ProgramState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => Container(),
          loadedShow: (program) {
            return XHtml(
              data: program.content,
            );
          },
        );
      },
    );
  }
}
