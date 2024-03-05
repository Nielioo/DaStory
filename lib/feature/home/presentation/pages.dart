import 'dart:io';

import 'package:dastory/common/l10n/localization.dart';
import 'package:dastory/common/widget/widgets.dart';
import 'package:dastory/core/themes/themes.dart';
import 'package:dastory/feature/auth/data/datas.dart';
import 'package:dastory/feature/home/bloc/post_story/post_story_bloc.dart';
import 'package:dastory/feature/home/bloc/stories/stories_bloc.dart';
import 'package:dastory/feature/home/bloc/story_detail/story_detail_bloc.dart';
import 'package:dastory/feature/language/bloc/language_bloc.dart';
import 'package:dastory/feature/language/model/language_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

part 'home_page.dart';
part 'stories_page.dart';
part 'story_detail_page.dart';
part 'post_story_page.dart';
part 'profile_page.dart';
