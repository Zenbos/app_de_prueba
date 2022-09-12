import 'package:app_de_prueba/Demo/constans.dart';
import 'package:app_de_prueba/Demo1.0/screens/home/BNavigation/Bnav4/data/users.dart';
import 'package:app_de_prueba/Demo1.0/screens/home/BNavigation/Bnav4/model/user.dart';
import 'package:app_de_prueba/Demo1.0/screens/home/BNavigation/Bnav4/widget/scrollable_widget.dart';
import 'package:flutter/material.dart';


class SortablePage extends StatefulWidget {
  @override
  _SortablePageState createState() => _SortablePageState();
}


class _SortablePageState extends State<SortablePage> {

  late List<User> users;
  int? sortColumnIndex;
  bool isAscending = false;





  @override
  void initState() {
    super.initState();

    this.users = List.of(allUsers);
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
backgroundColor: kBackgroundColor ,
  appBar: AppBar(
    flexibleSpace: Container(padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10) ),
        gradient: LinearGradient(
          colors: [Colors.transparent, Colors.transparent],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
      child: IconButton(
          onPressed: (){

          },
          icon: Icon(Icons.search)),
    ),
  ),
  body:
      ScrollableWidget(child: buildDataTable()),
  );
}

  Widget buildDataTable() {

    final columns = ['Country', 'Network', 'IMSI 1', 'IMSI 2'];

    return DataTable(
      sortAscending: isAscending,
      sortColumnIndex: sortColumnIndex,
      columns: getColumns(columns),
      rows: getRows(users),
    );
  }

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(
            label: Text(column),
            onSort: onSort,
          ))
      .toList();

  List<DataRow> getRows(List<User> users) => users.map((User user) {
        final cells = [user.Country, user.Network, user.IMSI1, user.IMSI2];

        return DataRow(cells: getCells(cells));
      }).toList();

  List<DataCell> getCells(List<dynamic> cells) =>
      cells.map((data) => DataCell(Text('$data'))).toList();

  void onSort(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      users.sort((user1, user2) =>
          compareString(ascending, user1.Country, user2.Country));
    } else if (columnIndex == 1) {
      users.sort((user1, user2) =>
          compareString(ascending, user1.Network, user2.Network));
    } else if (columnIndex == 2) {
      users.sort((user1, user2) =>
          compareString(ascending, '${user1.IMSI1}', '${user2.IMSI1}'));
    }else if (columnIndex == 3) {
      users.sort((user1, user2) =>
          compareString(ascending, '${user1.IMSI2}', '${user2.IMSI2}'));
    }

    setState(() {
      this.sortColumnIndex = columnIndex;
      this.isAscending = ascending;
    });
  }

  int compareString(bool ascending, String value1, String value2) =>
      ascending ? value1.compareTo(value2) : value2.compareTo(value1);
}


