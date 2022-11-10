import 'package:arstate/arstate.dart';
import 'package:learn_freezed_1/repository/http.dart';
// ignore: depend_on_referenced_packages
import '../models/model_program/program.dart';

class ProgramRepository {
  late XHttp http;

  ProgramRepository() {
    http = XHttp();
  }

  Future<ApiResult<Program>> show(int id) async {
    return await http.get(
      '/programs/$id',
      onSuccess: (response) => Program.fromJson(response.data['data']),
      authorization: true,
    );
  }
}
