class PlaceModel {
  final String id, imageUrl, name, location, description;
  final double rating;

  PlaceModel(
      {required this.id,
      required this.imageUrl,
      required this.name,
      required this.location,
      required this.rating,
      required this.description});
}
