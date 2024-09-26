import 'package:eccomerce_app/app/components/TextField/constant/app_color.dart';
import 'package:eccomerce_app/app/components/testStyle/textStyle.dart';
import 'package:eccomerce_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../components/TextField/constant/input_Style.dart';
import '../../../components/TextField/form_text_field.dart';
import '../../../custom/appBar.dart';
import '../../../custom/dashbordCard.dart';
import '../controllers/dashbord_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DashbordView extends GetView<DashbordController> {
  const DashbordView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.whiteColor,
        title: const CustomHeader(),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                buildSearchBarSection(),
                SizedBox(height: 15),
                buildCarouselSection(height: height, width: width),
                SizedBox(height: 20),
                Text(
                  'Popular Brand',
                  style: CustomTextStyles.appBarMainText,
                ),
                SizedBox(height: 10),
                Container(
                  height: height * 0.06,
                  width: width,
                  color: Colors.transparent,
                  child: Container(
                    height: height * 0.06,
                    width: width,
                    color: Colors.transparent,
                    child: Obx(
                      () => ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.categories.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                              left: index == 0 ? 15 : 5,
                              right: 5,
                            ),
                            child: Obx(
                              () => ElevatedButton(
                                onPressed: () {
                                  controller.selectCategory(index);
                                  print('ravi$index');
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      controller.selectedIndex.value == index
                                          ? Colors.black
                                          : const Color.fromARGB(
                                              255, 246, 246, 246),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    // if (index == 0)
                                    //   Padding(
                                    //     padding: EdgeInsets.only(right: 5),
                                    //     child: Icon(
                                    //       Icons.menu,
                                    //       color:
                                    //           controller.selectedIndex.value ==
                                    //                   index
                                    //               ? Colors.white
                                    //               : Colors.black,
                                    //       size: 16,
                                    //     ),
                                    //   ),
                                    Text(
                                      controller.categories[index],
                                      style: TextStyle(
                                        color: controller.selectedIndex.value ==
                                                index
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Most Popular',
                      style: CustomTextStyles.bodyTextBold,
                    ),
                    Text(
                      'View all',
                      style: CustomTextStyles.bodyboldred14,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: height * 0.40,
                  width: width,
                  color: Colors.transparent,
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CustomCard(
                        imageUrl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXPgBbHSc5UoT5tu2RbADX5N8jfy4vjLdQmA&s",
                        rating: "3",
                        reviewsCount: "7",
                        soldCount: "100+ sold", // Example count
                        price: "₹113",
                        originalPrice: "₹157",
                        discountPercentage: "28% off",
                        firstOrderDiscount: "₹94 with 1 Special Offer",
                        deliveryTime: "Delivery within 1 day",
                        title: "Denzolee Men's T-Shirt",

                        onFavoritePressed: () {
                          // Handle favorite press
                        },
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New Arrival',
                      style: CustomTextStyles.bodyTextBold,
                    ),
                    Text(
                      'View all',
                      style: CustomTextStyles.bodyboldred14,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: height * 0.5,
                  width: width,
                  color: Colors.transparent,
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CustomCard(
                        imageUrl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXPgBbHSc5UoT5tu2RbADX5N8jfy4vjLdQmA&s",
                        rating: "3",
                        reviewsCount: "7",
                        soldCount: "100+ sold", // Example count
                        price: "₹113",
                        originalPrice: "₹157",
                        discountPercentage: "28% off",
                        firstOrderDiscount: "\$94 with 1 Special Offer",
                        deliveryTime: "Delivery within 1 day",
                        title: "Denzolee Men's T-Shirt",

                        onFavoritePressed: () {
                          // Handle favorite press
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCustomAppBar() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: const Text(
        'Your Custom Header',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.blackColor,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget buildSearchBarSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Get.toNamed(Routes.SEARCH_PRODUCT);
              },
              child: Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: AppColors.blackColor,
                    width: 1,
                  ),
                  color: AppColors.whiteColor, // Background color
                ),
                child: Row(
                  children: [
                    Icon(
                      Iconsax.search_normal,
                      color: AppColors.blackColor,
                      size: 25,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Search here...',
                        style: AppStyles.inputStyle.copyWith(
                          color: AppColors.hintColor,
                        ),
                      ),
                    ),
                    Icon(
                      Iconsax.microphone,
                      color: AppColors.blackColor,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.FILTER_PRODUCT);
            },
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                border: Border.all(),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                child: Icon(
                  Iconsax.setting_5,
                  color: AppColors.blackColor,
                  size: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget buildSearchBarSection() {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 8.0),
  //     child: Row(
  //       children: [
  //         Expanded(
  //           child: GestureDetector(
  //             onTap: () {},
  //             child: CustomTextFormField(
  //               height: 50,
  //               prefix: Icon(
  //                 Iconsax.search_normal,
  //                 color: AppColors.blackColor,
  //                 size: 25,
  //               ),
  //               borderDecoration: OutlineInputBorder(
  //                 borderRadius: BorderRadius.circular(8),
  //                 borderSide: const BorderSide(
  //                   color: AppColors.blackColor,
  //                   width: 1,
  //                 ),
  //               ),
  //               hintText: 'Search here...',
  //               suffix: Icon(
  //                 Iconsax.microphone,
  //                 color: AppColors.blackColor,
  //                 size: 20,
  //               ),
  //             ),
  //           ),
  //         ),
  //         SizedBox(width: 10),
  //         GestureDetector(
  //           onTap: () {
  //             Get.toNamed(Routes.SEARCH_PRODUCT);
  //           },
  //           child: Container(
  //             height: 48,
  //             decoration: BoxDecoration(
  //               color: AppColors.whiteColor,
  //               border: Border.all(),
  //               borderRadius: BorderRadius.circular(8),
  //             ),
  //             child: Padding(
  //               padding:
  //                   const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
  //               child: Icon(
  //                 Iconsax.filter,
  //                 color: AppColors.blackColor,
  //                 size: 25,
  //               ),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget buildCarouselSection({required double height, required double width}) {
    return Obx(() {
      return CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          height: height * 0.2,
          viewportFraction: 0.85,
          enlargeCenterPage: true,
        ),
        items: controller.items.map((item) {
          return Container(
            height: height * 0.2,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 195, 193, 212),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: width * 0.05,
                  top: height * 0.02,
                  child: Text(
                    item.title,
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  left: width * 0.05,
                  top: height * 0.08,
                  child: Text(
                    item.subtitle,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Positioned(
                  left: width * 0.05,
                  top: height * 0.13,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text('Get Now'),
                  ),
                ),
                Positioned(
                  right: width * 0.03,
                  top: height * 0.02,
                  child: Container(
                    height: height * 0.195,
                    width: width * 0.32,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fill,
                        image: NetworkImage(item.imageUrl),
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      );
    });
  }
}
