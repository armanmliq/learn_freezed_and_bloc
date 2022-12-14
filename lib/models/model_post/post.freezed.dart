// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_favorited')
  bool? get hasFavorited => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "image_url")
  String get imageUrl => throw _privateConstructorUsedError;
  PostCategory get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_Post extends _Post {
  const _$_Post(
      {required this.id,
      required this.title,
      required this.slug,
      required this.description,
      this.content,
      this.tags,
      @JsonKey(name: 'has_favorited') this.hasFavorited,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "image_url") required this.imageUrl,
      required this.category})
      : super._();

  factory _$_Post.fromJson(Map<String, dynamic> json) => _$$_PostFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String slug;
  @override
  final String description;
  @override
  final String? content;
  @override
  final String? tags;
  @override
  @JsonKey(name: 'has_favorited')
  final bool? hasFavorited;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;
  @override
  @JsonKey(name: "image_url")
  final String imageUrl;
  @override
  final PostCategory category;

  @override
  String toString() {
    return 'Post(id: $id, title: $title, slug: $slug, description: $description, content: $content, tags: $tags, hasFavorited: $hasFavorited, createdAt: $createdAt, imageUrl: $imageUrl, category: $category)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostToJson(
      this,
    );
  }
}

abstract class _Post extends Post {
  const factory _Post(
      {required final int id,
      required final String title,
      required final String slug,
      required final String description,
      final String? content,
      final String? tags,
      @JsonKey(name: 'has_favorited') final bool? hasFavorited,
      @JsonKey(name: "created_at") required final String createdAt,
      @JsonKey(name: "image_url") required final String imageUrl,
      required final PostCategory category}) = _$_Post;
  const _Post._() : super._();

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get slug;
  @override
  String get description;
  @override
  String? get content;
  @override
  String? get tags;
  @override
  @JsonKey(name: 'has_favorited')
  bool? get hasFavorited;
  @override
  @JsonKey(name: "created_at")
  String get createdAt;
  @override
  @JsonKey(name: "image_url")
  String get imageUrl;
  @override
  PostCategory get category;
}
