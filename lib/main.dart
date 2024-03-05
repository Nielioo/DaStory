import 'package:dastory/common/router/router.dart';
import 'package:dastory/core/themes/themes.dart';
import 'package:dastory/feature/auth/bloc/auth_bloc.dart';
import 'package:dastory/feature/auth/data/datas.dart';
import 'package:dastory/feature/home/bloc/post_story/post_story_bloc.dart';
import 'package:dastory/feature/home/bloc/stories/stories_bloc.dart';
import 'package:dastory/feature/home/bloc/story_detail/story_detail_bloc.dart';
import 'package:dastory/feature/home/data/datas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(
            AuthRemote(),
          ),
        ),
        BlocProvider(
          create: (context) => StoriesBloc(
            StoriesRemote(),
          )..add(GetStoriesEvent()),
        ),
        BlocProvider(
          create: (context) => StoryDetailBloc(
            StoriesRemote(),
          ),
        ),
        BlocProvider(
          create: (context) => PostStoryBloc(
            StoriesRemote(),
          ),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Stories App',
        theme: ThemeData(
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: amber400,
                secondary: amber500,
              ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: amber400,
              foregroundColor: amber50,
              textStyle: const TextStyle(),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
            ),
          ),
        ),
        routerConfig: router,
      ),
    );
  }
}
