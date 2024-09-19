class CoffeeShop {
  String nama;
  String lokasi;
  String harga;
  String deskripsi;
  String gambar;
  String jam;
  String rating;
  List<String> urlGambar;

  CoffeeShop({
    required this.nama,
    required this.lokasi,
    required this.harga,
    required this.deskripsi,
    required this.gambar,
    required this.jam,
    required this.rating,
    required this.urlGambar,
  });
}

var shopCoffeeList = [
  CoffeeShop(
    nama: "JKT Coffeeion",
    lokasi: "Jakarta Selatan",
    harga: "10000 - 20000",
    deskripsi: "JKT Coffeeion: Temukan pengalaman ngopi"
        " yang berbeda di setiap sudut kafe. Dengan desain"
        " interior yang modern dan nyaman, nikmati kopi"
        " pilihan yang lezat.",
    gambar: "assets/images/coshop2.jpg",
    jam: "08:00 - 23:00",
    rating: "4.7",
    urlGambar: [
     "https://i.pinimg.com/736x/f2/6b/69/f26b690138ac16f7ec93cfe39ca9351e.jpg",
     "https://i.pinimg.com/736x/86/4b/fc/864bfc1fae9d3bbb877ee0b4d53e3b6c.jpg"
    ],
  ),
  CoffeeShop(
    nama: "Kopi Kenangan",
    lokasi: "Jakarta Utara",
    harga: "15000 - 30000",
    deskripsi: "Kopi Kenangan: Kenikmatan kopi dengan"
        " berbagai varian rasa, dibuat dengan bahan-bahan"
        " berkualitas tinggi. Ideal untuk bersantai atau"
        " bekerja.",
    gambar: "assets/images/coshop1.jpg",
    jam: "07:00 - 22:00",
    rating: "4.5",
    urlGambar: [
      "https://images.unsplash.com/photo-1585641043596-cb6380a4b99c",
      "https://images.unsplash.com/photo-1585641043596-cb6380a4b99c",
    ],
  ),
  // Tambahkan lebih banyak item sesuai kebutuhan
];
