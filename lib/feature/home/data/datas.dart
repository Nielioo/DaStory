import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:dastory/common/util/const.dart';
import 'package:dastory/feature/auth/data/datas.dart';
import 'package:dastory/feature/auth/data/model/response/register_response_model.dart';
import 'package:dastory/feature/home/data/model/get_detail_story_response_model.dart';
import 'package:dastory/feature/home/data/model/get_stories_response_model.dart';
import 'package:image_picker/image_picker.dart';

import 'package:http/http.dart' as http;

part 'model/post_story_request_model.dart';

part 'source/remote/stories_remote.dart';
