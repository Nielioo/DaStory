import 'package:bloc/bloc.dart';
import 'package:dastory/feature/auth/data/model/response/register_response_model.dart';
import 'package:dastory/feature/home/data/datas.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'post_story_event.dart';
part 'post_story_state.dart';

part 'post_story_bloc.freezed.dart';

class PickImageStoryBloc
    extends Bloc<PickImageStoryEvent, PickImageStoryState> {
  final StoriesRemote _storiesRemote;
  PickImageStoryBloc(this._storiesRemote) : super(const _Initial()) {
    on<_PickImagePhotoEvent>(
      (event, emit) async {
        emit(const PickImageStoryState.loading());
        final ImagePicker picker = ImagePicker();
        try {
          final XFile? pickedFile = await picker.pickImage(
            source: ImageSource.camera,
            imageQuality: 50,
          );
          if (pickedFile != null) {
            return emit(
              PickImageStoryState.success(
                imagePath: pickedFile.path,
                imageFile: pickedFile,
              ),
            );
          }
          return emit(
              const PickImageStoryState.failed('Failed to choose image'));
        } catch (e) {
          return emit(PickImageStoryState.failed('Error: $e'));
        }
      },
    );

    on<_PickImageGaleryEvent>(
      (event, emit) async {
        emit(const PickImageStoryState.loading());
        final ImagePicker picker = ImagePicker();
        try {
          final XFile? pickedFile = await picker.pickImage(
            source: ImageSource.gallery,
            imageQuality: 50,
          );
          if (pickedFile != null) {
            return emit(
              PickImageStoryState.success(
                imagePath: pickedFile.path,
                imageFile: pickedFile,
              ),
            );
          }
          return emit(
              const PickImageStoryState.failed('Failed to choose image'));
        } catch (e) {
          return emit(PickImageStoryState.failed('Error : $e'));
        }
      },
    );

    on<_PostStoryEvent>((event, emit) async {
      emit(const PickImageStoryState.postLoading());
      final response = await _storiesRemote.postStory(
          imageFile: event.imageFile,
          description: event.description,
          lat: event.lat,
          lon: event.lon);
      response.fold(
        (failed) => emit(PickImageStoryState.postFailed(failed)),
        (success) {
          return emit(PickImageStoryState.postSuccess(success));
        },
      );
    });
  }
}
