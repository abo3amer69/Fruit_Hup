import 'package:fruit_hup/core/utils/app_images.dart';

class ButtomNavigationBarEntity {
  final String ActiveImage, inActiveImage;
  final String name;

  ButtomNavigationBarEntity(
      {required this.ActiveImage,
      required this.inActiveImage,
      required this.name});
}

List<ButtomNavigationBarEntity> get buttomNavigationBarItem => [
      ButtomNavigationBarEntity(
        ActiveImage: Assets.imagesVuesaxBoldHome,
        inActiveImage: Assets.imagesVuesaxOutlineHome,
        name: 'الرئيسية',
      ),
      ButtomNavigationBarEntity(
        ActiveImage: Assets.imagesVuesaxBoldProducts,
        inActiveImage: Assets.imagesVuesaxOutlineProducts,
        name: 'المنتجات',
      ),
      ButtomNavigationBarEntity(
        ActiveImage: Assets.imagesVuesaxBoldShoppingCart,
        inActiveImage: Assets.imagesVuesaxOutlineShoppingCart,
        name: 'سله التسوق',
      ),
      ButtomNavigationBarEntity(
        ActiveImage: Assets.imagesVuesaxBoldUser,
        inActiveImage: Assets.imagesVuesaxOutlineUser,
        name: 'الحساب',
      ),
    ];
