// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddProductState {
  List<Uint8List> get images => throw _privateConstructorUsedError;
  List<ProductModel> get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddProductStateCopyWith<AddProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductStateCopyWith<$Res> {
  factory $AddProductStateCopyWith(
          AddProductState value, $Res Function(AddProductState) then) =
      _$AddProductStateCopyWithImpl<$Res, AddProductState>;
  @useResult
  $Res call({List<Uint8List> images, List<ProductModel> products});
}

/// @nodoc
class _$AddProductStateCopyWithImpl<$Res, $Val extends AddProductState>
    implements $AddProductStateCopyWith<$Res> {
  _$AddProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddProductStateCopyWith<$Res>
    implements $AddProductStateCopyWith<$Res> {
  factory _$$_AddProductStateCopyWith(
          _$_AddProductState value, $Res Function(_$_AddProductState) then) =
      __$$_AddProductStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Uint8List> images, List<ProductModel> products});
}

/// @nodoc
class __$$_AddProductStateCopyWithImpl<$Res>
    extends _$AddProductStateCopyWithImpl<$Res, _$_AddProductState>
    implements _$$_AddProductStateCopyWith<$Res> {
  __$$_AddProductStateCopyWithImpl(
      _$_AddProductState _value, $Res Function(_$_AddProductState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? products = null,
  }) {
    return _then(_$_AddProductState(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$_AddProductState implements _AddProductState {
  const _$_AddProductState(
      {final List<Uint8List> images = const [],
      final List<ProductModel> products = const []})
      : _images = images,
        _products = products;

  final List<Uint8List> _images;
  @override
  @JsonKey()
  List<Uint8List> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<ProductModel> _products;
  @override
  @JsonKey()
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'AddProductState(images: $images, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddProductState &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddProductStateCopyWith<_$_AddProductState> get copyWith =>
      __$$_AddProductStateCopyWithImpl<_$_AddProductState>(this, _$identity);
}

abstract class _AddProductState implements AddProductState {
  const factory _AddProductState(
      {final List<Uint8List> images,
      final List<ProductModel> products}) = _$_AddProductState;

  @override
  List<Uint8List> get images;
  @override
  List<ProductModel> get products;
  @override
  @JsonKey(ignore: true)
  _$$_AddProductStateCopyWith<_$_AddProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
