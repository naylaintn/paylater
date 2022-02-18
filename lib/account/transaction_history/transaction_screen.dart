import 'package:flutter/material.dart';
import 'package:paylater_startup/util/colors.dart';

import 'done/done_screen.dart';
import 'on_process/onprocess_screen.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  _TransactionHistoryState createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> with TickerProviderStateMixin {

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
        elevation: 2,
        backgroundColor: scaffoldColor,
        title: const Text("Transaction History", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: kTextColor)),
        bottom: TabBar(
          labelColor: kTextColor,
          labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          unselectedLabelColor: Colors.grey.withOpacity(0.5),
          indicator: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: kPrimaryColor, width: 2),
            ),
          ),
          controller: _tabController,
          tabs: [
            Text("ON PROCESS"),
            Text("DONE"),
          ],
        ),
      ),
      body: SizedBox(
        width: _width,
        height: _height,
        child: TabBarView(
          controller: _tabController,
          children: [
            OnProcess(),
            Done_Screen(),
          ],
        ),
      ),
    );
  }
}

