import 'package:arstate/arstate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../logic/bloc/post/post_bloc.dart';
import '../../models/model_post/post.dart';

class PostDetail extends StatefulWidget {
  const PostDetail({Key? key}) : super(key: key);

  @override
  State<PostDetail> createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PostDetail'),
      ),
      body: BlocProvider(
        create: (context) => PostBloc()..add(const PostEvent.show(1)),
        child: BlocBuilder<PostBloc, PostState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return const CircularProgressIndicator();
              },
              isError: (e) {
                return StateWidget.error(
                  stateContentType: StateContentType.full,
                  error: e,
                  onRetry: () {
                    context.read<PostBloc>().add(const PostEvent.show(1));
                  },
                );
              },
              loadedShow: (Post post) {
                return Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        context.read<PostBloc>().add(const PostEvent.show(1));
                      },
                      icon: const Icon(Icons.refresh),
                    ),
                    Text(post.category.name),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
