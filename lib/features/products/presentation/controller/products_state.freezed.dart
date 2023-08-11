// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductsState {
  int get categoryIndex => throw _privateConstructorUsedError;
  bool get gridViewDisplay => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsStateCopyWith<ProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
  @useResult
  $Res call({int categoryIndex, bool gridViewDisplay});
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryIndex = null,
    Object? gridViewDisplay = null,
  }) {
    return _then(_value.copyWith(
      categoryIndex: null == categoryIndex
          ? _value.categoryIndex
          : categoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
      gridViewDisplay: null == gridViewDisplay
          ? _value.gridViewDisplay
          : gridViewDisplay // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductsStateCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$$_ProductsStateCopyWith(
          _$_ProductsState value, $Res Function(_$_ProductsState) then) =
      __$$_ProductsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int categoryIndex, bool gridViewDisplay});
}

/// @nodoc
class __$$_ProductsStateCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$_ProductsState>
    implements _$$_ProductsStateCopyWith<$Res> {
  __$$_ProductsStateCopyWithImpl(
      _$_ProductsState _value, $Res Function(_$_ProductsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryIndex = null,
    Object? gridViewDisplay = null,
  }) {
    return _then(_$_ProductsState(
      categoryIndex: null == categoryIndex
          ? _value.categoryIndex
          : categoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
      gridViewDisplay: null == gridViewDisplay
          ? _value.gridViewDisplay
          : gridViewDisplay // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProductsState implements _ProductsState {
  const _$_ProductsState(
      {this.categoryIndex = 0, this.gridViewDisplay = false});

  @override
  @JsonKey()
  final int categoryIndex;
  @override
  @JsonKey()
  final bool gridViewDisplay;

  @override
  String toString() {
    return 'ProductsState(categoryIndex: $categoryIndex, gridViewDisplay: $gridViewDisplay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsState &&
            (identical(other.categoryIndex, categoryIndex) ||
                other.categoryIndex == categoryIndex) &&
            (identical(other.gridViewDisplay, gridViewDisplay) ||
                other.gridViewDisplay == gridViewDisplay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryIndex, gridViewDisplay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsStateCopyWith<_$_ProductsState> get copyWith =>
      __$$_ProductsStateCopyWithImpl<_$_ProductsState>(this, _$identity);
}

abstract class _ProductsState implements ProductsState {
  const factory _ProductsState(
      {final int categoryIndex, final bool gridViewDisplay}) = _$_ProductsState;

  @override
  int get categoryIndex;
  @override
  bool get gridViewDisplay;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsStateCopyWith<_$_ProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}
