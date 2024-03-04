import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dastory/common/util/const.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:http/http.dart' as http;

part 'source/local/auth_local.dart';
part 'source/remote/auth_remote.dart';

part 'model/request/login_request_model.dart';
part 'model/request/register_request_model.dart';
part 'model/response/login_response_model.dart';
part 'model/response/register_response_model.dart';
