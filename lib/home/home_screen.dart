import 'package:flutter/material.dart';
import 'package:online_shop/home/bottom_naviagtion.dart';
import 'package:online_shop/item_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleSelection);
    super.initState();
  }

  _handleSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Icon(Icons.sort_rounded,
                        size: 35, color: Colors.white.withOpacity(0.5)),
                  ),
                  InkWell(
                    child: Icon(Icons.notifications,
                        size: 35, color: Colors.white.withOpacity(0.5)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "It's Gread Day for Coffe",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              height: 60,
              alignment: Alignment.center,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Find your  coffee',
                    hintStyle: const TextStyle(fontSize: 16),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.9),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
            ),
            TabBar(
                tabAlignment: TabAlignment.start,
                indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide(
                        width: 3, color: Color.fromARGB(255, 228, 149, 30)),
                    insets: EdgeInsets.symmetric(horizontal: 16)),
                controller: _tabController,
                labelColor: Colors.white,
                labelStyle:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                labelPadding: const EdgeInsets.symmetric(horizontal: 16),
                mouseCursor: MouseCursor.defer,
                isScrollable: true,
                unselectedLabelColor: Colors.white.withOpacity(0.5),
                tabs: const [
                  Tab(
                    child: Text("Hot Coffe"),
                  ),
                  Tab(child: Text("Black Coffe")),
                  Tab(child: Text("Ice Coffe")),
                  Tab(child: Text("Sweets"))
                ]),
            const SizedBox(height: 10),
            Center(
              child: [
                const ItemWidget(),
                const ItemWidget(),
                const ItemWidget(),
                const ItemWidget(),
              ][_tabController.index],
            ),
          ],
        ),
      )),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
