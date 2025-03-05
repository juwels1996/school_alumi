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

    final double screenWidth = MediaQuery.of(context).size.width;
    int itemsPerRow;
    if (screenWidth >= 1000) {
      // Large screen (e.g., desktop)
      itemsPerRow = 5;
    } else if (screenWidth >= 600) {
      // Medium screen (e.g., tablet)
      itemsPerRow = 4;
    } else {
      // Small screen (e.g., phone)
      itemsPerRow = 2;
    }
    return DefaultTabController(
      length: 6, // Number of tabs
      child: Scaffold(
        backgroundColor: Colors.black,

        appBar: AppBar(
          centerTitle: false,
          toolbarHeight: 100.h,

          // backgroundColor: Colors.blueAccent.shade400,
          title: Row(
            children: [
              Image.asset(
                "assets/images/logo-dmhs.png",
                height: 100.h,
              ),
              Text("DMHS Alumni Association",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold)),
            ],
          ),
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
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.blueAccent, Colors.orangeAccent],
                        ),
                      ),
                      // Wrap in Padding if you like
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: GridView.builder(
                          // If you are inside a TabBarView and want the grid to handle scrolling:
                          // do NOT set shrinkWrap: true or custom physics. Let the GridView scroll normally.
                          itemCount: _controller.users.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: itemsPerRow, // The # of columns
                            mainAxisSpacing: 16, // Vertical spacing
                            crossAxisSpacing: 16, // Horizontal spacing
                            childAspectRatio:
                                0.75, // Width/height ratio of each item
                          ),
                          itemBuilder: (context, index) {
                            final user = _controller.users[index];
                            return UserCard(
                              user: user,
                              onEdit: (updatedUser) {
                                _controller.updateUser(updatedUser);
                              },
                            );
                          },
                        ),
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
