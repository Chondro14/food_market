part of 'models.dart';
enum FoodType{new_food,popular,recomended}
class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingridients;
  final int price;
  final double rate;
  final List<FoodType> foodType;
  Food(
      {this.id,
      this.description,
      this.ingridients,
      this.name,
      this.picturePath,
      this.price,
      this.rate,this.foodType= const []});
  @override
  // TODO: implement props
  List<Object> get props =>
      [id, picturePath, name, description, ingridients, price, rate];
}

List<Food> foodList = [
  Food(
      id: 1,
      picturePath:
          'https://cdn.yummy.co.id/content-images/images/20200329/zY3x9uCGYx53uTQjKwaMVnC7GYXewcYF-31353835343738373632d41d8cd98f00b204e9800998ecf8427e_800x800.jpg',
      price: 14000,
      name: 'Sate Ayam Bang Jago',
      description:
          'Sate Ayam ini adalah Daging ayam yang ditusuk dan dibakar dengan bumbu Kecap dan kacang sehingga Nikmatnya tak tertahankan',
      rate: 4.6,
      ingridients:
          'Daging ayam,Kacang,Kecap,Sambal,Tusuk Sate,Jeruk Limau,Bawang Putih,Bawang Merah',
  foodType: [FoodType.new_food,FoodType.recomended,FoodType.popular]),
  Food(
      id: 2,
      picturePath:
          'https://img-global.cpcdn.com/recipes/081e4c7561f30b65/1200x630cq70/photo.jpg',
      price: 16000,
      name: 'Soto Ayam Betawi ',
      description:
          'Soto Ayam ini adalah Makanan Khas betawi dengan khas Kuah sotonya .',
      rate: 5,
      ingridients:
          'Daging ayam,Kecap,Sambal,Jeruk Limau,Bawang Putih,Bawang Merah,Daun Bawang,Serai'),
  Food(
      id: 3,
      picturePath:
          'https://selerasa.com/wp-content/uploads/2018/11/rawon-jogja-480x270-1200x720.jpg',
      price: 19000,
      name: 'Rawon Daging sapi mpal gentong ',
      description:
          'Rawon ini adalah Makanan Khas dengan daging sapi dengan khas Kuah rawonnya yang sedap.',
      rate: 3.9,
      ingridients:
          'Daging Sapi,Kecap,Sambal,Jeruk Limau,Bawang Putih,Bawang Merah,Daun Bawang,Serai,kayu manis',
  foodType: [FoodType.new_food]),
  Food(
      id: 4,
      picturePath:
          'https://img-global.cpcdn.com/recipes/62b2f7b0f1a3d08f/751x532cq70/ayam-bakar-madu-resipi-foto-utama.jpg',
      price: 19000,
      name: 'Ayam Bakar madu ',
      description:
          'Ayam Bakar Madu ini adalah Makanan Khas dengan daging Ayam dibakar dengan kecap khas bumbu kecap dan madu yang sedap.',
      rate: 4.2,
      ingridients:
          'Daging Ayam,Kecap,Sambal,Jeruk Limau,Bawang Putih,Bawang Merah,Daun Bawang,Serai,kayu manis',
  foodType: [FoodType.popular]),
  Food(
      id: 5,
      picturePath:
          'https://cdn.idntimes.com/content-images/post/20190828/tasteofheritage-4e404d3e29393a343df896763094f0cb.jpg',
      price: 19000,
      name: 'Sate Lilit Daging Sapi ',
      description:
          'Sate Lilit Daging Sapi ini adalah Makanan Khas dengan daging Sapi dibakar dengan kecap khas bumbu kecap dan rempah-rempah yang sedap.',
      rate: 4.7,
      ingridients:
          'Daging Sapi,Kecap,Sambal,Jeruk Limau,Bawang Putih,Bawang Merah,Daun Bawang,Serai,kayu manis',
  foodType: [FoodType.recomended]),
];
