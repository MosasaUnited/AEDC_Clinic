import 'package:aedc_clinic/features/choose_clinic/data/models/card_type.dart';

class ClinicDestination {
  final String assetName;
  final String title;
  final String description;
  final String city;
  final String location;
  final CardType cardType;

  ClinicDestination(
      {required this.assetName,
      required this.title,
      required this.description,
      required this.city,
      required this.location,
      this.cardType = CardType.standard});
}
