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
            " interior yang instagramable dan menu kopi yang beragam,"
            " JKT Coffeeion adalah tempat yang sempurna untuk mengeksplorasi"
            " sisi kreatifmu. Harga yang terjangkau membuat kamu bisa menikmati"
            " semua itu tanpa perlu khawatir.",
        gambar: 'assets/images/coshop2.jpg',
        jam: "10:00 - 21:00",
        rating: "4.7",
        urlGambar: urlGambar,
    ),
];