import 'package:articles_app_flutter/add_article/domain/i_add_article_repository.dart';
import 'package:articles_app_flutter/common/models/failure.dart';
import 'package:articles_app_flutter/di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'add_article_state.dart';
part 'add_article_cubit.freezed.dart';

class AddArticleCubit extends Cubit<AddArticleState> {
  AddArticleCubit() : super(const AddArticleState());
  final _addArticleRepository = getIt<IAddArticleRepository>();

  void updateTitle(String newTitle) =>
      emit(state.copyWith(title: newTitle, error: null));

  void updateContent(String newContent) =>
      emit(state.copyWith(content: newContent, error: null));

  void addImage(XFile image) {
    emit(state.copyWith(error: null));
    final images = List<XFile>.from(state.images);
    emit(state.copyWith(images: images..add(image)));
  }

  void updateImagesOrder({required int oldIndex, required int newIndex}) {
    emit(state.copyWith(error: null));
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

  void publishArticle() async {
    emit(state.copyWith(isLoading: true, error: null));
    final response = await _addArticleRepository.publishArticle(
        title: state.title, content: state.content, images: state.images);
    response.fold(
        (l) => emit(state.copyWith(error: l, isLoading: false)),
        (r) =>
            emit(state.copyWith(successfulyPublished: true, isLoading: false)));
  }
}
