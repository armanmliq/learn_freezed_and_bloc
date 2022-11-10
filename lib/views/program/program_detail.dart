import 'package:arstate/arstate.dart';
import 'package:arx/config/constants/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_freezed_1/views/bank_account/widget/shimmer_bank_account.dart';
import 'package:learn_freezed_1/views/post/widget/title.dart';
import '../../../models/model_program/program.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../logic/bloc/program/program_bloc.dart';
import '../post/widget/content_html.dart';

class ProgramDetail extends StatefulWidget {
  const ProgramDetail({Key? key}) : super(key: key);

  @override
  State<ProgramDetail> createState() => _ProgramDetailState();
}

class _ProgramDetailState extends State<ProgramDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blue.shade900,
          ),
        ),
        title: const Center(
          child: TitleAppbar(),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border_outlined,
              color: Colors.grey,
            ),
          ),
          BlocBuilder<ProgramBloc, ProgramState>(
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () => Container(),
                  loadedShow: (program) {
                    return IconButton(
                      onPressed: () async {
                        try {
                          await launchUrl(Uri.parse('google.com'));
                        } catch (e) {
                          print(e);
                        }
                      },
                      icon: Icon(
                        Icons.web,
                        color: Colors.blue.shade900,
                      ),
                    );
                  });
            },
          )
        ],
      ),
      body: BlocProvider(
        create: (context) => ProgramBloc()..add(const ProgramEvent.show(1)),
        child: BlocBuilder<ProgramBloc, ProgramState>(
          
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return ShimmerBankAccount();
              },
              isError: (e) {
                return StateWidget.error(
                  stateContentType: StateContentType.full,
                  error: e,
                  onRetry: () {
                    context.read<ProgramBloc>().add(const ProgramEvent.show(1));
                  },
                );
              },
              loadedShow: (Program program) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      //IMAGE
                      Stack(
                        children: [
                          CachedNetworkImage(
                            imageUrl: program.imageUrl,
                          ),
                          Positioned(
                            left: 0.0,
                            right: 0.0,
                            bottom: 0.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  program.programCategory.name,
                                  style: TextStyle(
                                    color: Colors.white,
                                    backgroundColor: Colors.blue.shade900,
                                  ),
                                ),
                                Text(
                                  program.countryCode,
                                  style: TextStyle(
                                    color: Colors.white,
                                    backgroundColor: Colors.blue.shade900,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      //TITLE
                      const SizedBox(height: Constants.kPaddingL),
                      const Padding(
                        padding: EdgeInsets.all(Constants.kPaddingL),
                        child: TitleAppbar(),
                      ),
                      //CONTENT
                      const ContentHtml(),

                      //
                      IconButton(
                        onPressed: () {
                          context
                              .read<ProgramBloc>()
                              .add(const ProgramEvent.show(1));
                        },
                        icon: const Icon(Icons.refresh),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
