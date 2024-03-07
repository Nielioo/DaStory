import 'package:bloc/bloc.dart';
import 'package:dastory/feature/home/data/datas.dart';
import 'package:dastory/feature/home/data/model/get_stories_response_model.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stories_event.dart';
part 'stories_state.dart';

part 'stories_bloc.freezed.dart';

class StoriesBloc extends Bloc<StoriesEvent, StoriesState> {
  final StoriesRemote _storiesRemote;
  StoriesBloc(this._storiesRemote) : super(const _StoriesInitial()) {
    on<_Add>((event, emit) async {
      emit(const _StoriesLoading());
      final response = await _storiesRemote.getStories();
      response.fold(
        (left) => emit(_StoriesFailed(left)),
        (right) {
          return emit(_StoriesSuccess(right));
        },
      );
    });
  }
}
