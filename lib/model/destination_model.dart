import 'package:codecole/model/activity_model.dart';
class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List <Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/abeokuta.jpg',
    name: 'Olumo rock',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/idanre.jpg',
    name: 'Idanre hill',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/yankariGameReserve.png',
    name: 'Yankari Game reserve',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/abeokuta.jpg',
    city: 'Abeokuta',
    country: 'Nigeria',
    description: 'Visit Olumo Rock for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/idanre.jpg',
    city: 'Ondo',
    country: 'Nigeria',
    description: 'Visit Idanre Hills for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/yankariGameReserve.png',
    city: 'Bauchi',
    country: 'Nigeria',
    description: 'Visit Yankari Game Reserve for an amazing and unforgettable adventure.',
    activities: activities,
  ),

];