import 'package:bloc/bloc.dart';
import 'package:dastory/feature/language/data/model/language_model.dart';
import 'package:dastory/feature/language/data/source/remote/language_remote.dart';
import 'package:equatable/equatable.dart';

part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(InitialLanguageState()) {
    on<ChangeLanguageEvent>(
      (event, emit) async {
        await LanguangeRemote().setLanguange(event.selectedLanguage);
        emit(ChangedLanguageState(selectedLanguage: event.selectedLanguage));
      },
    );
  }
}
