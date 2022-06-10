import 'package:flutter/material.dart';
import 'package:paylater_startup/account/bookings/completed/completed_screen.dart';
import 'package:paylater_startup/account/bookings/upcoming/upcoming_screen.dart';
import 'package:paylater_startup/util/colors.dart';

class BookingsScreen extends StatefulWidget {
  const BookingsScreen({Key? key}) : super(key: key);

  @override
  _BookingsScreenState createState() => _BookingsScreenState();
}

class _BookingsScreenState extends State<BookingsScreen> with TickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Bookings", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kTextColor)),
        bottom: TabBar(
          labelColor: kTextColor,
          labelStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          unselectedLabelColor: Colors.grey.withOpacity(0.5),
          indicator: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: kPrimaryColor, width: 2),
            ),
          ),
          controller: _tabController,
          tabs: const [
            Text("UPCOMING"),
            Text("COMPLETED"),
          ],
        ),
      ),
      body: SizedBox(
        width: _width,
        height: _height,
        child: TabBarView(
          controller: _tabController,
          children: const [
            UpcomingScreen(),
            CompletedScreen(),
          ],
        ),
      ),
    );
  }
}

