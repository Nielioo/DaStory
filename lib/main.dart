import 'package:dastory/common/l10n/localization.dart';
import 'package:dastory/common/router/router.dart';
import 'package:dastory/core/themes/themes.dart';
import 'package:dastory/feature/auth/bloc/auth_bloc.dart';
import 'package:dastory/feature/auth/data/datas.dart';
import 'package:dastory/feature/home/bloc/post_story/post_story_bloc.dart';
import 'package:dastory/feature/home/bloc/stories/stories_bloc.dart';
import 'package:dastory/feature/home/bloc/story_detail/story_detail_bloc.dart';
import 'package:dastory/feature/home/data/datas.dart';
import 'package:dastory/feature/language/bloc/language_bloc.dart';
import 'package:dastory/feature/language/data/model/language_model.dart';
import 'package:dastory/feature/language/data/source/remote/language_remote.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => LanguageBloc(),
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  initState() {
    getLanguange();
    super.initState();
  }

  Future<void> getLanguange() async {
    final savedLang = await LanguangeRemote().getLanguange();
    if (savedLang != '') {
      // ignore: use_build_context_synchronously
      BlocProvider.of<LanguageBloc>(context).add(
        ChangeLanguageEvent(
          selectedLanguage: (savedLang == 'Indonesia')
              ? Language.indonesia
              : Language.english,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
      builder: (context, state) => MultiBlocProvider(
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
          locale: (state is ChangedLanguageState)
              ? state.selectedLanguage.value
              : Language.indonesia.value,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          routerConfig: router,
        ),
      ),
    );
  }
}
