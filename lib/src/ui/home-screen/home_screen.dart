import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:testing_purpose/src/ui/about_us/about_us_screen.dart';
import 'package:testing_purpose/src/ui/contact_us/contact_us.dart';
import '../../controller/home_controller.dart';
import '../image_gallery/image_show.dart';
import '../menu-bar/drawer_widget.dart';
import '../notice_screen/notice_screen.dart';
import '../widgets/tabarwidget/homescreen_tabbar.dart';
import 'components/user_card.dart';
import 'homescreen_information.dart';

class SchoolProfilePage extends StatefulWidget {
  const SchoolProfilePage({super.key});

  @override
  State<SchoolProfilePage> createState() => _SchoolProfilePageState();
}

class _SchoolProfilePageState extends State<SchoolProfilePage> {
  final HomeController _controller = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
    _controller.fetchUserData();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(360, 690), minTextAdapt: true);

    // Determine the number of items per row based on the screen width
    double screenWidth = ScreenUtil().screenWidth;
    int itemsPerRow = 2; // Default to 2 items per row for smaller devices

    if (screenWidth > 600) {
      itemsPerRow = 4; // For medium-sized devices (e.g., tablets)
    } else if (screenWidth > 1000) {
      itemsPerRow = 5; // For large devices (e.g., desktop)
    }
    return DefaultTabController(
      length: 6, // Number of tabs
      child: Scaffold(
        backgroundColor: Colors.grey,

        appBar: AppBar(
          centerTitle: false,

          // backgroundColor: Colors.blueAccent.shade400,
          title: Text("কুমিল্লা বুদ্ধিস্ট মহাবিহার স্কুল এন্ড কলেজ"),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue.shade800,
                ),
                child: MyCustomTab()), // Use MyCustomTab here
          ),
        ),
        // drawer: const DrawerWidget(),
        body: Obx(() {
          if (_controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }

          if (_controller.users.isEmpty) {
            return const Center(child: Text('No users found.'));
          }

          return Column(
            children: [
              Expanded(
                child: TabBarView(
                  children: [
                    Center(
                        child:
                            HomeScreenInformation()), // Example content for tab 2

                    Center(child: NoticeScreen()),
                    Center(child: ImageGalleryPage()),
                    Container(
                      color: Colors.black26,
                      child: ListView.builder(
                        padding: const EdgeInsets.all(16),
                        itemCount: (_controller.users.length / itemsPerRow)
                            .ceil(), // Number of rows
                        itemBuilder: (context, rowIndex) {
                          int startIndex = rowIndex * itemsPerRow;
                          int endIndex = (rowIndex + 1) * itemsPerRow;

                          // Create a list of users for this row
                          List<dynamic> rowUsers = _controller.users.sublist(
                            startIndex,
                            endIndex > _controller.users.length
                                ? _controller.users.length
                                : endIndex,
                          );

                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(rowUsers.length, (index) {
                                final user = rowUsers[index];
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  child: Container(
                                    width: (screenWidth -
                                            32 -
                                            (itemsPerRow - 1) * 16) /
                                        itemsPerRow, // Ensure width is same for each card
                                    child: UserCard(
                                      user: user,
                                      onEdit: (updatedUser) {
                                        _controller.updateUser(updatedUser);
                                      },
                                    ),
                                  ),
                                );
                              }),
                            ),
                          );
                        },
                      ),
                    ),

                    Center(child: AboutUsPage()),
                    Center(child: ContactUsPage()), // Example content for tab 4
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
