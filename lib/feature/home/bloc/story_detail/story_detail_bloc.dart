import 'package:bloc/bloc.dart';
import 'package:dastory/feature/home/data/datas.dart';
import 'package:dastory/feature/home/data/model/get_detail_story_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_detail_event.dart';
part 'story_detail_state.dart';
part 'story_detail_bloc.freezed.dart';

class StoryDetailBloc extends Bloc<StoryDetailEvent, StoryDetailState> {
  final StoriesRemote _storiesRemote;
  StoryDetailBloc(this._storiesRemote) : super((const _Initial())) {
    on<_Add>(
      (event, emit) async {
        emit(const StoryDetailState.loading());
        final response = await _storiesRemote.getDetailStory(event.storyId);
        response.fold(
          (failed) => emit(StoryDetailState.failed(failed)),
          (success) {
            return emit(StoryDetailState.success(success));
          },
        );
      },
    );
  }
}
