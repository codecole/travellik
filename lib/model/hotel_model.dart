class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/lacampagne.jpg',
    name: 'Lacampagne',
    address: 'Ibeju Lekki, Lagos',
    price: 375,
  ),
  Hotel(
    imageUrl: 'assets/images/transcorpHilton.jpg',
    name: 'Transcorp Hilton',
    address: 'Garki, Abuja',
    price: 300,
  ),
  Hotel(
    imageUrl: 'assets/images/ekohotel.jpg',
    name: 'Eko hotel & Suites',
    address: 'Victoria Island, Lagos',
    price: 240,
  ),
];