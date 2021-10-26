class NissanCar {
  String name;
  String dateOfManu;
  String detail;
  String imageUrl;
  String popularity;
  NissanCar({
    this.name = "",
    this.dateOfManu = "",
    this.detail = "",
    this.imageUrl = "",
    this.popularity ="",

  });
}

List<NissanCar> nissanCars = [
  NissanCar(
      name: "Nissan S13 ",
      dateOfManu: "1993",
      imageUrl: "assets/images/nissans13.jpg",
      popularity: "⭐⭐⭐⭐⭐"
      ),
      
  NissanCar(
      name: "Skyline GT-R 33",
      dateOfManu: "1995",
      imageUrl: "assets/images/skylinegtr33.jpg",
      popularity: "⭐⭐⭐⭐⭐"),
      
  NissanCar(
      name: "180SX Type X",
      dateOfManu: "1996",
      imageUrl: "assets/images/96nissan.jpg",
      popularity: "⭐⭐⭐⭐"),
  NissanCar(
      name: "Skyline GTT",
      dateOfManu: "1998",
      imageUrl: "assets/images/skylinegtt.jpg",
      popularity: "⭐⭐⭐⭐"),
  NissanCar(
      name: "Skyline GT-R",
      dateOfManu: "2000",
      imageUrl: "assets/images/skylinegtr.jpg",
      popularity: "⭐⭐⭐⭐⭐"),
];
