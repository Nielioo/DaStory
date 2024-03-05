import 'package:bloc/bloc.dart';
import 'package:dastory/feature/auth/data/datas.dart';
import 'package:dastory/feature/home/data/datas.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

part 'post_story_event.dart';
part 'post_story_state.dart';

class PostStoryBloc extends Bloc<PostStoryEvent, PostStoryState> {
  final StoriesRemote _storiesRemote;
  PostStoryBloc(this._storiesRemote) : super(PostStoryInitial()) {
    on<PickImageGaleryEvent>(
      (event, emit) async {
        emit(ImageGaleryLoading());
        final ImagePicker picker = ImagePicker();
        try {
          final XFile? pickedFile = await picker.pickImage(
            source: ImageSource.gallery,
            imageQuality: 50,
          );
          if (pickedFile != null) {
            return emit(
              ImageGalerySuccess(
                imagePath: pickedFile.path,
                imageFile: pickedFile,
              ),
            );
          }
          return emit(const ImageGaleryFailed(message: 'Failed to pick image'));
        } catch (e) {
          return emit(ImageGaleryFailed(message: 'Error: $e'));
        }
      },
    );

    on<PickImageCameraGaleryEvent>(
      (event, emit) async {
        emit(ImageGaleryLoading());
        final ImagePicker picker = ImagePicker();
        try {
          final XFile? pickedFile = await picker.pickImage(
            source: ImageSource.camera,
            imageQuality: 50,
          );
          if (pickedFile != null) {
            return emit(
              ImageGalerySuccess(
                imagePath: pickedFile.path,
                imageFile: pickedFile,
              ),
            );
          }
          return emit(const ImageGaleryFailed(message: 'Failed to pick image'));
        } catch (e) {
          return emit(ImageGaleryFailed(message: 'Error : $e'));
        }
      },
    );

    on<DoPostStoryEvent>((event, emit) async {
      emit(PostStoryLoading());
      final response = await _storiesRemote.postStory(
          imageFile: event.imageFile,
          description: event.description,
          lat: event.lat,
          lon: event.lon);
      response.fold(
        (failed) => emit(PostStoryFailed(message: failed)),
        (success) {
          return emit(PostStorySuccess(responseModel: success));
        },
      );
    });
  }
}
