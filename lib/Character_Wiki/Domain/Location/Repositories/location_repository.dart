import 'package:character_wiki/Character_Wiki/Domain/Location/Entity/location.dart';

abstract class LocationRepository {
  Future<List<Location>> getLocations ();
}