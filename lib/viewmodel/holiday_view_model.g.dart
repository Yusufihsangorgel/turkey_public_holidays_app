// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holiday_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HolidayViewModel on _HolidayViewModelBase, Store {
  final _$postsAtom = Atom(name: '_HolidayViewModelBase.posts');

  @override
  List<Holiday> get posts {
    _$postsAtom.reportRead();
    return super.posts;
  }

  @override
  set posts(List<Holiday> value) {
    _$postsAtom.reportWrite(value, super.posts, () {
      super.posts = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_HolidayViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$turkishAtom = Atom(name: '_HolidayViewModelBase.turkish');

  @override
  bool get turkish {
    _$turkishAtom.reportRead();
    return super.turkish;
  }

  @override
  set turkish(bool value) {
    _$turkishAtom.reportWrite(value, super.turkish, () {
      super.turkish = value;
    });
  }

  final _$isErrorAtom = Atom(name: '_HolidayViewModelBase.isError');

  @override
  bool get isError {
    _$isErrorAtom.reportRead();
    return super.isError;
  }

  @override
  set isError(bool value) {
    _$isErrorAtom.reportWrite(value, super.isError, () {
      super.isError = value;
    });
  }

  final _$getHolidayAsyncAction =
      AsyncAction('_HolidayViewModelBase.getHoliday');

  @override
  Future getHoliday() {
    return _$getHolidayAsyncAction.run(() => super.getHoliday());
  }

  final _$_HolidayViewModelBaseActionController =
      ActionController(name: '_HolidayViewModelBase');

  @override
  dynamic setLoading(bool value) {
    final _$actionInfo = _$_HolidayViewModelBaseActionController.startAction(
        name: '_HolidayViewModelBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_HolidayViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTurkish(bool value) {
    final _$actionInfo = _$_HolidayViewModelBaseActionController.startAction(
        name: '_HolidayViewModelBase.setTurkish');
    try {
      return super.setTurkish(value);
    } finally {
      _$_HolidayViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setError(bool value) {
    final _$actionInfo = _$_HolidayViewModelBaseActionController.startAction(
        name: '_HolidayViewModelBase.setError');
    try {
      return super.setError(value);
    } finally {
      _$_HolidayViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
posts: ${posts},
isLoading: ${isLoading},
turkish: ${turkish},
isError: ${isError}
    ''';
  }
}
