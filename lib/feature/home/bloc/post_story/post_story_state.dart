part of 'post_story_bloc.dart';

@freezed
class PickImageStoryState with _$PickImageStoryState {
  const factory PickImageStoryState.initial() = _Initial;
  const factory PickImageStoryState.loading() = _PickImageStoryLoading;
  const factory PickImageStoryState.failed(String message) =
      _PickImageStoryFailed;
  const factory PickImageStoryState.success(
      {required String imagePath,
      required XFile imageFile}) = _PickImageStorySuccess;

  const factory PickImageStoryState.postLoading() = _PickImagePostLoading;
  const factory PickImageStoryState.postFailed(String message) =
      _PickImagePostFailed;
  const factory PickImageStoryState.postSuccess(
      RegisterResponseModel responseModel) = _PickImagePostSuccess;
}
