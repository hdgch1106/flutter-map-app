part of 'map_bloc.dart';

sealed class MapEvent extends Equatable {
  const MapEvent();

  @override
  List<Object> get props => [];
}

class OnMapInitializeEvent extends MapEvent {
  final GoogleMapController controller;

  const OnMapInitializeEvent({required this.controller});
}
