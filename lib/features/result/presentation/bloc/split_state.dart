part of 'split_bloc.dart';

@immutable
abstract class SplitState {}

class SplitInitial extends SplitState {}

class SplitLoad extends SplitState {}

class SplitSort extends SplitState {}

class SplitCount extends SplitState {}
