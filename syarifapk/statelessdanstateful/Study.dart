import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("username"),
          centerTitle: false,
          actions: const [
            Icon(Icons.add_box_outlined),
            SizedBox(width: 16),
            Icon(Icons.menu),
            SizedBox(width: 16),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Bagian Profil Atas
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        'https://unblast.com/wp-content/uploads/2020/01/Instagram-UI-Profile-1.jpg',
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          _ProfileStat(count: "12", label: "Posts"),
                          _ProfileStat(count: "1.2K", label: "Followers"),
                          _ProfileStat(count: "500", label: "Following"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Deskripsi Profil
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Username", style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 4),
                    Text("UI Designer | Flutter Developer | Traveler 🌍"),
                    SizedBox(height: 4),
                    Text(
                      "#flutter #mobiledev #uiux",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              // Tombol Edit Profil
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text("Edit Profile"),
                ),
              ),
              const SizedBox(height: 10),

              // Story Highlights
              SizedBox(
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    _StoryCircle(
                      imageUrl: 'https://mockupduck.com/assets/img/mockups/instagram-profile.png',
                      title: 'Story 1',
                    ),
                    _StoryCircle(
                      imageUrl: 'https://cdn.dribbble.com/userupload/42214685/file/original-a14f7179f0adfa8fef343b077132e417.png?resize=400x300',
                      title: 'Story 2',
                    ),
                    _StoryCircle(
                      imageUrl: 'https://i.ytimg.com/vi/yE3AfRPlMCs/maxresdefault.jpg',
                      title: 'Story 3',
                    ),
                    _StoryCircle(
                      imageUrl: 'https://i0.wp.com/appsnipp.com/wp-content/uploads/2020/01/82869659_1067480243604760_1604514415015624704_o.jpg?resize=475%2C960&ssl=1',
                      title: 'Story 4',
                    ),
                  ],
                ),
              ),

              // Tab Bar (Posts dan Tagged)
              const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.grid_on)),
                  Tab(icon: Icon(Icons.person_pin_outlined)),
                ],
              ),

              // Isi Tab
              SizedBox(
                height: 400,
                child: TabBarView(
                  children: [
                    _PostGrid(),
                    Center(child: Text("Tagged Posts")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget untuk statistik profil (Posts, Followers, Following)
class _ProfileStat extends StatelessWidget {
  final String count;
  final String label;

  const _ProfileStat({required this.count, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(count, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        Text(label),
      ],
    );
  }
}

// Widget Story Circle
class _StoryCircle extends StatelessWidget {
  final String imageUrl;
  final String title;

  const _StoryCircle({required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(imageUrl),
          ),
          const SizedBox(height: 4),
          Text(title),
        ],
      ),
    );
  }
}

// Grid postingan
class _PostGrid extends StatelessWidget {
  const _PostGrid();

  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = [
      'https://s3-alpha.figma.com/hub/file/5539547423/d691046e-1fcc-40c8-9dec-ea382bd16481-cover.png',
      'https://s3-alpha.figma.com/hub/file/5539547423/d691046e-1fcc-40c8-9dec-ea382bd16481-cover.png',
      'https://s3-alpha.figma.com/hub/file/5539547423/d691046e-1fcc-40c8-9dec-ea382bd16481-cover.png',
      'https://cdn.dribbble.com/userupload/42214685/file/original-a14f7179f0adfa8fef343b077132e417.png?resize=400x300',
      'https://i0.wp.com/appsnipp.com/wp-content/uploads/2020/01/82869659_1067480243604760_1604514415015624704_o.jpg?resize=475%2C960&ssl=1',
      'https://mockupduck.com/assets/img/mockups/instagram-profile.png',
    ];

    return GridView.builder(
      padding: const EdgeInsets.all(2),
      itemCount: imageUrls.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
      ),
      itemBuilder: (context, index) {
        return Image.network(
          imageUrls[index],
          fit: BoxFit.cover,
        );
      },
    );
  }
}
