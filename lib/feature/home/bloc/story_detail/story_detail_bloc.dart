import 'package:bloc/bloc.dart';
import 'package:dastory/feature/home/data/datas.dart';
import 'package:equatable/equatable.dart';

part 'story_detail_event.dart';
part 'story_detail_state.dart';

class StoryDetailBloc extends Bloc<StoryDetailEvent, StoryDetailState> {
  final StoriesRemote _storiesRemote;
  StoryDetailBloc(this._storiesRemote) : super(StoryDetailInitial()) {
    on<GetDetailStoryEvent>(
      (event, emit) async {
        emit(StoryDetailLoading());
        final response =
            await _storiesRemote.getDetailStory(event.storyId);
        response.fold(
          (failed) => emit(StoryDetailFailed(message: failed)),
          (success) {
            return emit(StoryDetailSuccess(responseModel: success));
          },
        );
      },
    );
  }
}
