import 'package:articles_app_flutter/common/models/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'add_article_state.dart';
part 'add_article_cubit.freezed.dart';

class AddArticleCubit extends Cubit<AddArticleState> {
  AddArticleCubit() : super(const AddArticleState());

  void updateTitle(String newTitle) => emit(state.copyWith(title: newTitle));

  void updateDescription(String newDescription) =>
      emit(state.copyWith(description: newDescription));

  void addImage(XFile image) {
    final images = List<XFile>.from(state.images);
    emit(state.copyWith(images: images..add(image)));
  }

  void updateImagesOrder({required int oldIndex, required int newIndex}) {
    final images = List<XFile>.from(state.images);
    final image = images[oldIndex];
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    newIndex = newIndex.clamp(0, images.length);
    images.removeAt(oldIndex);
    images.insert(newIndex, image);
    emit(state.copyWith(images: images));
  }
}
