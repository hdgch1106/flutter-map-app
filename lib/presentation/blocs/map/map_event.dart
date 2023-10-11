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

class OnStopFollowingUserMap extends MapEvent {}

class OnStartFollowingUserMap extends MapEvent {}

class UpdateUserPolylineEvent extends MapEvent {
  final List<LatLng> userLocations;
  const UpdateUserPolylineEvent(this.userLocations);
}

class OnToggleUserRoute extends MapEvent {}
