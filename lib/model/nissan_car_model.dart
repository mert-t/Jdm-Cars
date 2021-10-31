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
    this.popularity = "",
 

  });
}

List<NissanCar> nissanCars = [
  NissanCar(
      name: "Nissan S13 ",
      dateOfManu: "1993",
      imageUrl: "assets/images/nissans13.jpg",
      popularity: "⭐⭐⭐⭐⭐",
      
      detail:
          "The Nissan Silvia (Japanese: 日産・シルビア, Nissan Shirubia) is the series of sport coupes built on the Nissan S platform. Versions of the Silvia have been marketed as the 180SX in Japan and as the 200SX or 240SX for export, with some export versions being sold under the Datsun brand."),
  NissanCar(
      name: "Skyline GT-R 33",
      dateOfManu: "1995",
      imageUrl: "assets/images/skylinegtr33.jpg",
      popularity: "⭐⭐⭐⭐⭐",
      
      detail:
          "The R33 Skyline was introduced in August 1993. Slightly heavier than the R32, it was available in coupe and sedan body configurations. The R33 was the safest of the models with a rating of 3.8 out of 5.5 accordingly; the airbag system and internal crash bars made this vehicle significantly safer than previous models. All models now used a six-cylinder engine. Nissan took the unusual step of down-grading the GTS model to have only the RB20E, while the twin-cam of the R32 GTS was discontinued. The 2.0 L turbo RB20DET GTS-t was also discontinued and was replaced with the GTS-25t which was equipped with the larger RB25DET and featured HICAS as standard in all GTS-25t sub-models except the Type G."),
  NissanCar(
      name: "180SX Type X",
      dateOfManu: "1996",
      imageUrl: "assets/images/96nissan.jpg",
      popularity: "⭐⭐⭐⭐",
      
      detail:
          "The Nissan 180SX is a fastback automobile that was produced by Nissan Motors between 1988 and 1998. It is based on the S13 chassis from the Nissan S platform with the variants receiving an R designation (ex. PS13 and RPS13), and was sold exclusively in Japan paired with the CA18 motor in the early models; later models paired with the SR20 motor. Outside of Japan, it was re-badged as the 200SX[1] and in the US market as the Nissan 240SX, paired with the single overhead cam KA24E motor and later with the dual-overhead model KA24DE."),
  NissanCar(
      name: "Skyline GTT",
      dateOfManu: "1998",
      imageUrl: "assets/images/skylinegtt.jpg",
      popularity: "⭐⭐⭐⭐",
       
      detail:
          "The Nissan Skyline (Japanese: 日産・スカイライン, Hepburn: Nissan Sukairain) is a brand of automobile originally produced by the Prince Motor Company starting in 1957, and then by Nissan after the two companies merged in 1967. After the merger, the Skyline and its larger counterpart, the Nissan Gloria, were sold in Japan at dealership sales channels called Nissan Prince Shop."),
  NissanCar(
      name: "Skyline GT-R",
      dateOfManu: "2000",
      imageUrl: "assets/images/skylinegtr.jpg",
      popularity: "⭐⭐⭐⭐⭐",
       
      detail:
          "The Nissan Skyline GT-R (Japanese: 日産・スカイラインGT-R, Nissan Sukairain GT-R) is a sports car based on the Nissan Skyline range. The first cars named Skyline GT-R were produced between 1969 and 1972 under the model code KPGC10, and were successful in Japanese touring car racing events. This model was followed by a brief production run of second-generation cars, under model code KPGC110, in 1973."),
];
