part of 'story_detail_bloc.dart';

@freezed
class StoryDetailState with _$StoryDetailState {
  const factory StoryDetailState.initial() = _Initial;
  const factory StoryDetailState.loading() = _StoryDetailLoading;
  const factory StoryDetailState.failed(String message) = _StoryDetailFailed;
  const factory StoryDetailState.success(
      GetDetailStoryResponseModel responseModel) = _StoryDetailSuccess;
}
