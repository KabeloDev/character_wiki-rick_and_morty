import 'package:character_wiki/Character_Wiki/Presentation/Bloc/Character/character_bloc.dart';
import 'package:character_wiki/Character_Wiki/Presentation/Bloc/Episode/episode_bloc.dart';
import 'package:character_wiki/Character_Wiki/Presentation/Bloc/Location/location_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BottomNavBuilder extends StatelessWidget {
  const BottomNavBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final currentRoute = GoRouter.of(context)
        .routeInformationProvider
        .value
        .uri
        .toString();

    TextStyle defaultStyle = const TextStyle(color: Colors.white);
    TextStyle activeStyle = TextStyle(
      color: Colors.grey[800],
      fontWeight: FontWeight.bold,
    );

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MaterialButton(
            onPressed: () {
              context.read<CharacterBloc>().add(const FetchCharacters());
              context.go('/home');
            },
            child: Text(
              'Characters',
              style: currentRoute == '/home' ? activeStyle : defaultStyle,
            ),
          ),
          MaterialButton(
            onPressed: () {
              context.read<EpisodeBloc>().add(FetchEpisodes());
              context.go('/episodes');
            },
            child: Text(
              'Episodes',
              style: currentRoute == '/episodes' ? activeStyle : defaultStyle,
            ),
          ),
          MaterialButton(
            onPressed: () {
              context.read<LocationBloc>().add(FetchLocations());
              context.go('/locations');
            },
            child: Text(
              'Locations',
              style: currentRoute == '/locations' ? activeStyle : defaultStyle,
            ),
          ),
        ],
      ),
    );
  }
}
