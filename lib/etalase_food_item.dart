
class Food{
  String imageAsset;
  String name;
  String price;
  String place;
  String description;
  int status;

  Food({
    required this.imageAsset,
    required this.name,
    required this.price,
    required this.place,
    required this.description,
    required this.status,
  });
}

var foodItem = [
  Food(
      imageAsset: 'images/sate.jpg',
      name: 'Sate',
      price: '15.000',
      place: 'Madura',
      description: 'makanan yang terbuat dari daging yang dipotong kecil-kecil dan ditusuk sedemikian rupa dengan tusukan lidi tulang daun kelapa atau bambu, kemudian dipanggang menggunakan bara arang kayu. Sate disajikan dengan berbagai macam bumbu yang bergantung pada variasi resep sate.',
      status: 1
  ),
  Food(
      imageAsset: 'images/rendang.jpg',
      name: 'Rendang',
      price: '25.000',
      place: 'Padang',
      description: 'Masakan Minangkabau yang berbahan dasar daging yang berasal dari Sumatera Barat, Indonesia. Masakan ini dihasilkan dari proses memasak suhu rendah dalam waktu lama dengan menggunakan aneka rempah-rempah dan santan.',
      status: 1),
  Food(
      imageAsset: 'images/topoki.jpg',
      name: 'Topokki',
      price: '21.000',
      place: 'Seoul',
      description: 'hidangan Korea berupa tepung beras yang dimasak dalam bumbu gochujang yang pedas dan manis. Tepung beras yang dipakai berbentuk bulat batang yang memanjang. Makanan ini juga termasuk dalam makanan internasional.',
      status: 2
  ),
  Food(
      imageAsset: 'images/kimchi.jpg',
      name: 'Kimchi',
      price: '35.000',
      place: 'korea',
      description: 'makanan tradisional Korea berupa asinan sayur hasil fermentasi yang diberi bumbu pedas. Setelah digarami dan dicuci, sayuran dicampur dengan bumbu yang dibuat dari udang krill, kecap ikan, bawang putih, jahe dan bubuk cabai merah. Sayuran yang paling umum dibuat kimci adalah sawi putih dan lobak.',
      status: 2
  ),
  Food(
      imageAsset: 'images/sushi.jpg',
      name: 'Sushi', price: '28.000',
      place: 'jepang',
      description: 'makanan Jepang yang terdiri dari nasi yang dibentuk bersama lauk berupa makanan laut, daging, sayuran mentah atau sudah dimasak. Nasi susyi mempunyai rasa masam yang lembut karena dibumbui campuran cuka beras, garam, dan gula.',
      status: 3),
  Food(
      imageAsset: 'images/onigiri.jpg',
      name: 'Onigiri',
      price: '10.000',
      place: 'jepang',
      description: 'nama Jepang untuk makanan berupa nasi yang dipadatkan sewaktu masih hangat sehingga berbentuk segitiga, bulat, atau seperti karung beras. Dikenal juga dengan nama lain omusubi, istilah yang kabarnya dulu digunakan kalangan wanita di istana kaisar untuk menyebut onigiri.',
      status: 3)
];

var foodItemIndonesian =[
  Food(
      imageAsset: 'images/sate.jpg',
      name: 'Sate',
      price: '15.000',
      place: 'Madura',
      description: 'Daging yang ditusuk lalu dibakar',
      status: 1
  ),
  Food(
      imageAsset: 'images/rendang.jpg',
      name: 'Rendang',
      price: '25.000',
      place: 'Padang',
      description: 'Daging sapi yang di masak dengan rempah-rempah dan santan',
      status: 1),
];

var foodItemKorean = [
Food(
    imageAsset: 'images/topoki.jpg',
    name: 'Topokki',
    price: '21.000',
    place: 'Seoul',
    description: 'kue beras dengan saus pedas',
    status: 2
),
  Food(
      imageAsset: 'images/kimchi.jpg',
      name: 'Kimchi',
      price: '35.000',
      place: 'korea',
      description: 'sayur fermentasi yang dicampur bumbu merah',
      status: 2)
];

var foodItemJapanese = [
Food(
    imageAsset: 'images/sushi.jpg',
    name: 'Sushi', price: '28.000',
    place: 'jepang',
    description: 'lauk pauk yang dibungkus nasi jepang dan dipotong',
    status: 3),
  Food(
      imageAsset: 'images/onigiri.jpg',
      name: 'Onigiri',
      price: '10.000',
      place: 'jepang',
      description: 'isian abon tuna/ayam yang dibalut nasi jepang dan rumput laut dan dibentuk segitiga',
      status: 3)
];