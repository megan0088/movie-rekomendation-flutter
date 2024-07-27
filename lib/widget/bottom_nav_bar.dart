import 'package:flutter/material.dart';
import 'package:movie_recommendation_apps/screen/homepage.dart';
import 'package:movie_recommendation_apps/screen/search.dart';
import 'package:movie_recommendation_apps/screen/hot_film.dart'; // Pastikan untuk mengimpor MoreScreen dengan benar jika diperlukan

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: Container(
          color: const Color(0xFF201E43), // Perbaiki warna hex
          height: 70,
          child: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.search),
                text: "Search",
              ),
              Tab(
                icon: Icon(Icons.photo_library_outlined),
                text: "New & Hot",
              ),
            ],
            unselectedLabelColor:
                Color(0xFF999999), // Perbaiki warna teks tidak terpilih
            labelColor: Colors.white,
            indicatorColor: Colors.transparent, // Atur warna indikator
          ),
        ),
        body: const TabBarView(
          children: [
            HomeScreen(),
            SearchScreen(),
            MoreScreen(), // Pastikan untuk mengganti dengan screen yang sesuai
          ],
        ),
      ),
    );
  }
}
