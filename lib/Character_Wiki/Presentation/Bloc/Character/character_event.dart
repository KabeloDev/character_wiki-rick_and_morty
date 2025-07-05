// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'character_bloc.dart';

abstract class CharacterEvent extends Equatable {
  const CharacterEvent();

  @override
  List<Object?> get props => [];
}

class FetchCharacters extends CharacterEvent {
  final String? name;
  final String? status;
  final String? species;
  final String? gender;

  const FetchCharacters({this.name, this.status, this.species, this.gender});

  @override
  List<Object?> get props => [name, status, species, gender];
}

class SearchCharacters extends CharacterEvent {
  final String searchQuery;

  const SearchCharacters({required this.searchQuery});

  @override
  List<Object?> get props => [searchQuery];
}

class FilterCharacters extends CharacterEvent {
  final String? status;
  final String? species;
  final String? gender;

  const FilterCharacters({
    required this.status,
    required this.species,
    required this.gender,
  });

  @override
  List<Object?> get props => [status, species, gender];
}
