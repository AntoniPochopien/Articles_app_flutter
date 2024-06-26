// Mocks generated by Mockito 5.4.4 from annotations
// in articles_app_flutter/test/add_article/add_article_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:articles_app_flutter/add_article/domain/i_add_article_repository.dart'
    as _i3;
import 'package:articles_app_flutter/common/models/failure.dart' as _i5;
import 'package:dartz/dartz.dart' as _i2;
import 'package:image_picker/image_picker.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [IAddArticleRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIAddArticleRepository extends _i1.Mock
    implements _i3.IAddArticleRepository {
  MockIAddArticleRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>> publishArticle({
    required String? title,
    required String? content,
    required List<_i6.XFile>? images,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #publishArticle,
          [],
          {
            #title: title,
            #content: content,
            #images: images,
          },
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i5.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #publishArticle,
            [],
            {
              #title: title,
              #content: content,
              #images: images,
            },
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>>);
}
