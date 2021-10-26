class ToyotaCar {
  String name;
  String dateOfManu;
  String detail;
  String imageUrl;
  String popularity;
  ToyotaCar({
    this.name = "",
    this.dateOfManu = "",
    this.detail = "",
    this.imageUrl = "",
    this.popularity ="",

  });
}

List<ToyotaCar> toyotaCars = [
  ToyotaCar(
      name: "Supra RZ ",
      dateOfManu: "1996",
      imageUrl: "assets/images/supra.jpg",
      popularity: "⭐⭐⭐⭐⭐"
      ),
      
  ToyotaCar(
      name: "Sprinter Trueno",
      dateOfManu: "1986",
      imageUrl: "assets/images/sprinter.jpg",
      popularity: "⭐⭐⭐⭐⭐"),
      
  ToyotaCar(
      name: "Supra V12",
      dateOfManu: "1997",
      imageUrl: "assets/images/v12supra.jpg",
      popularity: "⭐⭐⭐⭐⭐"),
  ToyotaCar(
      name: "Corolla Sedan",
      dateOfManu: "1998",
      imageUrl: "assets/images/skylinegtt.jpg",
      popularity: "⭐⭐⭐⭐⭐"),
  ToyotaCar(
      name: "86 Subaru BRZ",
      dateOfManu: "2012",
      imageUrl: "assets/images/subaru.jpg",
      popularity: "⭐⭐⭐⭐"),
];
