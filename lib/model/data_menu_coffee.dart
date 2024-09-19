class MenuCoffee {
  String nama;
  String milk;
  String harga;
  String deskripsi;
  String gambar;
  String jam;
  String rating;
  List<String> urlGambar;
  String location; // New field for location

  MenuCoffee({
    required this.nama,
    required this.milk,
    required this.harga,
    required this.deskripsi,
    required this.gambar,
    required this.jam,
    required this.rating,
    required this.urlGambar,
    required this.location, // Initialize location
  });
}


var menuCoffeeList = [
  MenuCoffee(
    nama: "Espresso",
    milk: "No Milk",
    harga: "8000",
    deskripsi: "Espresso: Kopi murni dengan cita rasa kuat"
        " dan pekat, sempurna untuk pecinta kopi sejati.",
    gambar: "assets/images/cofe5.jpg",
    jam: "08:00 - 23:00",
    rating: "4.9",
    urlGambar: [
      "https://images.unsplash.com/photo-1511920170033-f8396924c348",
      "https://images.unsplash.com/photo-1511920170033-f8396924c348",
    ],
    location: "Jakarta, Indonesia",
  ),
  MenuCoffee(
    nama: "Americano",
    milk: "No Milk",
    harga: "12000",
    deskripsi: "Americano: Minuman kopi hitam dengan"
        " cita rasa yang halus namun tetap bertenaga.",
    gambar: "assets/images/cofe2.png",
    jam: "07:00 - 22:00",
    rating: "4.6",
    urlGambar: [
      "https://images.unsplash.com/photo-1556788072-43b23c6cfb83",
      "https://images.unsplash.com/photo-1556788072-43b23c6cfb83",
    ],
    location: "Bandung, Indonesia",
  ),
  MenuCoffee(
    nama: "Cappuccino",
    milk: "With Milk",
    harga: "14000",
    deskripsi: "Cappuccino: Perpaduan sempurna antara kopi"
        " dan susu dengan foam di atasnya, memberikan sensasi"
        " lembut di setiap tegukan.",
    gambar: "assets/images/cofe3.png",
    jam: "07:00 - 22:00",
    rating: "4.8",
    urlGambar: [
      "https://images.unsplash.com/photo-1509042239860-f550ce710b93",
      "https://images.unsplash.com/photo-1509042239860-f550ce710b93",
    ],
    location: "Surabaya, Indonesia",
  ),
  MenuCoffee(
    nama: "Mocha",
    milk: "With Milk",
    harga: "16000",
    deskripsi: "Mocha: Kombinasi lezat antara kopi dan cokelat,"
        " cocok bagi Anda yang menyukai rasa manis dengan"
        " sedikit sentuhan pahit.",
    gambar: "assets/images/cofe4.jpg",
    jam: "07:00 - 22:00",
    rating: "4.7",
    urlGambar: [
      "https://images.unsplash.com/photo-1568372961514-dfb02f4ad8e2",
      "https://images.unsplash.com/photo-1568372961514-dfb02f4ad8e2",
    ],
    location: "Yogyakarta, Indonesia",
  ),
  MenuCoffee(
    nama: "Latte",
    milk: "With Milk",
    harga: "15000",
    deskripsi: "Latte: Kopi yang lembut dengan susu yang creamy, cocok untuk santai.",
    gambar: "assets/images/cofe6.jpg",
    jam: "08:00 - 22:00",
    rating: "4.7",
    urlGambar: [
      "https://images.unsplash.com/photo-1509042239860-f550ce710b93",
      "https://images.unsplash.com/photo-1509042239860-f550ce710b93",
    ],
    location: "Bali, Indonesia",
  ),
  MenuCoffee(
    nama: "Macchiato",
    milk: "With Milk",
    harga: "17000",
    deskripsi: "Macchiato: Kopi dengan sedikit susu, lebih kuat dari latte.",
    gambar: "assets/images/cofe7.jpg",
    jam: "09:00 - 21:00",
    rating: "4.8",
    urlGambar: [
      "https://images.unsplash.com/photo-1498804103079-a6351b050096",
      "https://images.unsplash.com/photo-1498804103079-a6351b050096",
    ],
    location: "Semarang, Indonesia",
  ),
  MenuCoffee(
    nama: "Flat White",
    milk: "With Milk",
    harga: "16000",
    deskripsi: "Flat White: Perpaduan espresso dan susu dengan tekstur lembut.",
    gambar: "assets/images/cofe8.jpg",
    jam: "07:30 - 22:30",
    rating: "4.9",
    urlGambar: [
      "https://images.unsplash.com/photo-1541167760496-1628856ab772",
      "https://images.unsplash.com/photo-1541167760496-1628856ab772",
    ],
    location: "Malang, Indonesia",
  ),
  MenuCoffee(
    nama: "Affogato",
    milk: "With Milk",
    harga: "18000",
    deskripsi: "Affogato: Espresso yang disajikan dengan es krim, perpaduan manis dan pahit.",
    gambar: "assets/images/cofe9.jpg",
    jam: "10:00 - 23:00",
    rating: "4.7",
    urlGambar: [
      "https://images.unsplash.com/photo-1521295121783-8a321d551ad2",
      "https://images.unsplash.com/photo-1521295121783-8a321d551ad2",
    ],
    location: "Makassar, Indonesia",
  ),
  MenuCoffee(
    nama: "Cortado",
    milk: "With Milk",
    harga: "14000",
    deskripsi: "Cortado: Espresso dengan sedikit susu, lebih seimbang antara pahit dan creamy.",
    gambar: "assets/images/cofe10.jpg",
    jam: "08:30 - 22:00",
    rating: "4.6",
    urlGambar: [
      "https://images.unsplash.com/photo-1511920170033-f8396924c348",
      "https://images.unsplash.com/photo-1511920170033-f8396924c348",
    ],
    location: "Medan, Indonesia",
  ),
  MenuCoffee(
    nama: "Irish Coffee",
    milk: "With Milk",
    harga: "20000",
    deskripsi: "Irish Coffee: Kopi dengan sentuhan alkohol dan krim yang lembut.",
    gambar: "assets/images/cofe5.jpg",
    jam: "12:00 - 23:59",
    rating: "4.9",
    urlGambar: [
      "https://images.unsplash.com/photo-1604147706284-e8dddfdb7ffb",
      "https://images.unsplash.com/photo-1604147706284-e8dddfdb7ffb",
    ],
    location: "Banda Aceh, Indonesia",
  ),
  MenuCoffee(
    nama: "Vietnamese Coffee",
    milk: "With Milk",
    harga: "13000",
    deskripsi: "Vietnamese Coffee: Kopi dengan susu kental manis, nikmat dan manis.",
    gambar: "assets/images/cofe7.jpg",
    jam: "08:00 - 22:00",
    rating: "4.7",
    urlGambar: [
      "https://images.unsplash.com/photo-1582169505937-cfbf3b80630c",
      "https://images.unsplash.com/photo-1582169505937-cfbf3b80630c",
    ],
    location: "Palembang, Indonesia",
  ),
];

