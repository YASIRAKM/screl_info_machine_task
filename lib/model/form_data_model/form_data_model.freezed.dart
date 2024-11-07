// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FormData {
  @HiveField(0)
  String? get subject => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get previewText => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get mail => throw _privateConstructorUsedError;
  @HiveField(4)
  bool? get isRunOnly => throw _privateConstructorUsedError;
  @HiveField(5)
  bool? get isCustomAudience => throw _privateConstructorUsedError;
  @HiveField(6)
  int? get isCompleted => throw _privateConstructorUsedError;

  /// Create a copy of FormData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormDataCopyWith<FormData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormDataCopyWith<$Res> {
  factory $FormDataCopyWith(FormData value, $Res Function(FormData) then) =
      _$FormDataCopyWithImpl<$Res, FormData>;
  @useResult
  $Res call(
      {@HiveField(0) String? subject,
      @HiveField(1) String? previewText,
      @HiveField(2) String? name,
      @HiveField(3) String? mail,
      @HiveField(4) bool? isRunOnly,
      @HiveField(5) bool? isCustomAudience,
      @HiveField(6) int? isCompleted});
}

/// @nodoc
class _$FormDataCopyWithImpl<$Res, $Val extends FormData>
    implements $FormDataCopyWith<$Res> {
  _$FormDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = freezed,
    Object? previewText = freezed,
    Object? name = freezed,
    Object? mail = freezed,
    Object? isRunOnly = freezed,
    Object? isCustomAudience = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(_value.copyWith(
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      previewText: freezed == previewText
          ? _value.previewText
          : previewText // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      mail: freezed == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String?,
      isRunOnly: freezed == isRunOnly
          ? _value.isRunOnly
          : isRunOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCustomAudience: freezed == isCustomAudience
          ? _value.isCustomAudience
          : isCustomAudience // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormDataImplCopyWith<$Res>
    implements $FormDataCopyWith<$Res> {
  factory _$$FormDataImplCopyWith(
          _$FormDataImpl value, $Res Function(_$FormDataImpl) then) =
      __$$FormDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? subject,
      @HiveField(1) String? previewText,
      @HiveField(2) String? name,
      @HiveField(3) String? mail,
      @HiveField(4) bool? isRunOnly,
      @HiveField(5) bool? isCustomAudience,
      @HiveField(6) int? isCompleted});
}

/// @nodoc
class __$$FormDataImplCopyWithImpl<$Res>
    extends _$FormDataCopyWithImpl<$Res, _$FormDataImpl>
    implements _$$FormDataImplCopyWith<$Res> {
  __$$FormDataImplCopyWithImpl(
      _$FormDataImpl _value, $Res Function(_$FormDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = freezed,
    Object? previewText = freezed,
    Object? name = freezed,
    Object? mail = freezed,
    Object? isRunOnly = freezed,
    Object? isCustomAudience = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(_$FormDataImpl(
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      previewText: freezed == previewText
          ? _value.previewText
          : previewText // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      mail: freezed == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String?,
      isRunOnly: freezed == isRunOnly
          ? _value.isRunOnly
          : isRunOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCustomAudience: freezed == isCustomAudience
          ? _value.isCustomAudience
          : isCustomAudience // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FormDataImpl implements _FormData {
  const _$FormDataImpl(
      {@HiveField(0) this.subject,
      @HiveField(1) this.previewText,
      @HiveField(2) this.name,
      @HiveField(3) this.mail,
      @HiveField(4) this.isRunOnly,
      @HiveField(5) this.isCustomAudience,
      @HiveField(6) this.isCompleted});

  @override
  @HiveField(0)
  final String? subject;
  @override
  @HiveField(1)
  final String? previewText;
  @override
  @HiveField(2)
  final String? name;
  @override
  @HiveField(3)
  final String? mail;
  @override
  @HiveField(4)
  final bool? isRunOnly;
  @override
  @HiveField(5)
  final bool? isCustomAudience;
  @override
  @HiveField(6)
  final int? isCompleted;

  @override
  String toString() {
    return 'FormData(subject: $subject, previewText: $previewText, name: $name, mail: $mail, isRunOnly: $isRunOnly, isCustomAudience: $isCustomAudience, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormDataImpl &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.previewText, previewText) ||
                other.previewText == previewText) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mail, mail) || other.mail == mail) &&
            (identical(other.isRunOnly, isRunOnly) ||
                other.isRunOnly == isRunOnly) &&
            (identical(other.isCustomAudience, isCustomAudience) ||
                other.isCustomAudience == isCustomAudience) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subject, previewText, name, mail,
      isRunOnly, isCustomAudience, isCompleted);

  /// Create a copy of FormData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormDataImplCopyWith<_$FormDataImpl> get copyWith =>
      __$$FormDataImplCopyWithImpl<_$FormDataImpl>(this, _$identity);
}

abstract class _FormData implements FormData {
  const factory _FormData(
      {@HiveField(0) final String? subject,
      @HiveField(1) final String? previewText,
      @HiveField(2) final String? name,
      @HiveField(3) final String? mail,
      @HiveField(4) final bool? isRunOnly,
      @HiveField(5) final bool? isCustomAudience,
      @HiveField(6) final int? isCompleted}) = _$FormDataImpl;

  @override
  @HiveField(0)
  String? get subject;
  @override
  @HiveField(1)
  String? get previewText;
  @override
  @HiveField(2)
  String? get name;
  @override
  @HiveField(3)
  String? get mail;
  @override
  @HiveField(4)
  bool? get isRunOnly;
  @override
  @HiveField(5)
  bool? get isCustomAudience;
  @override
  @HiveField(6)
  int? get isCompleted;

  /// Create a copy of FormData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormDataImplCopyWith<_$FormDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
