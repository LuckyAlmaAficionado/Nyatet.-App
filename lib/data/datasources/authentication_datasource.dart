import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:frontend_nyatet_app_flutter/data/model/login_response_model.dart';
import 'package:http/http.dart' as http;

class AuthenticationDatasource {
  Future<Either<String, LoginResponseModel>> login({
    required String username,
    required String password,
  }) async {
    try {
      var request = http.MultipartRequest(
        'POST',
        Uri.parse(
          'https://nyatet.orzverse.com/api/auth/login',
        ),
      );
      request.fields.addAll({
        'username': username,
        'password': password,
      });

      http.StreamedResponse response = await request.send();

      log(response.statusCode.toString());

      if (response.statusCode == 200) {
        final str = await response.stream.bytesToString();
        final login = LoginResponseModel.fromJson(str);
        return Right(login);
      } else if (response.statusCode == 401) {
        final str = await response.stream.bytesToString();
        final message = json.decode(str);
        return Left(message["message"]);
      } else {
        return Left(response.reasonPhrase!);
      }
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<void> logout() async {
    var headers = {
      'Authorization':
          'Bearer 3|FCmIpZc758VSK4i22l33jNOhXL1v2bUGovI28I6Ke1adf904'
    };

    var request = http.Request(
      'DELETE',
      Uri.parse(
        'https://nyatet.orzverse.com/api/auth/logout',
      ),
    );

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      // logout berhasil...!
    } else {
      // logout gagal...!
    }
  }
}
