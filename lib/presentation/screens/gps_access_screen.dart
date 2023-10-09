import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps_app/presentation/blocs/gps/gps_bloc.dart';

class GpsAccessScreen extends StatelessWidget {
  const GpsAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<GpsBloc, GpsState>(builder: (context, state) {
          return !state.isGpsEnabled
              ? const _EnableGpsMessage()
              : const _AccessButton();
        }),
      ),
    );
  }
}

class _AccessButton extends StatelessWidget {
  const _AccessButton();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Es necesario el acceso a GPS",
          style: TextStyle(fontSize: 15),
        ),
        const SizedBox(height: 5),
        ElevatedButton(
          child: const Text("Solicitar Accesso"),
          onPressed: () {
            final gpsBloc = BlocProvider.of<GpsBloc>(context);
            gpsBloc.askGpsAccess();
          },
        )
      ],
    );
  }
}

class _EnableGpsMessage extends StatelessWidget {
  const _EnableGpsMessage();

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Debe de habilitar el GPS",
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
    );
  }
}
