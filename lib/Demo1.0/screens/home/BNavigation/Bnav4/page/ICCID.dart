import 'package:app_de_prueba/Demo/constans.dart';
import 'package:app_de_prueba/Demo1.0/screens/home/BNavigation/Bnav4/data/Info_ICCID.dart';
import 'package:app_de_prueba/Demo1.0/screens/home/BNavigation/Bnav4/model/model_ICCID.dart';
import 'package:app_de_prueba/Demo1.0/screens/home/BNavigation/Bnav4/widget/scrollable_widget.dart';
import 'package:flutter/material.dart';




class ICCIDPage extends StatefulWidget {
  @override
  _ICCIDPageState createState() => _ICCIDPageState();
}


class _ICCIDPageState extends State<ICCIDPage> {

  late List<ICCID_model> users;
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

      body:
      ScrollableWidget(child: buildDataTable()),
    );
  }

  Widget buildDataTable() {

    final columns = ['ICCID','Status'];

    return DataTable(horizontalMargin: 30,

      sortAscending: isAscending,
      sortColumnIndex: sortColumnIndex,
      columnSpacing: 140,
      columns: getColumns(columns),
      rows: getRows(users),
      headingTextStyle: const TextStyle( color: Colors.black87,fontWeight: FontWeight.w900 ,),
      dataTextStyle: const TextStyle(color: Colors.black87),
    );
  }

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(
    label: Text(column),
    onSort: onSort,
  ))
      .toList();

  List<DataRow> getRows(List<ICCID_model> users) => users.map((ICCID_model user) {
    final cells = [user.ICCID, user.Status];

    return DataRow(

        cells: getCells(cells)
    );
  }).toList();

  List<DataCell> getCells(List<dynamic> cells) =>
      cells.map((data) => DataCell(Text('$data'))).toList();

  void onSort(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      users.sort((user1, user2) =>
          compareString(ascending, '${user1.ICCID}', '${user2.ICCID}'));
    }else if (columnIndex == 1) {
      users.sort((user1, user2) =>
          compareString(ascending, user1.Status, user2.Status));
    }

    setState(() {
      this.sortColumnIndex = columnIndex;
      this.isAscending = ascending;
    });
  }

  int compareString(bool ascending, String value1, String value2) =>
      ascending ? value1.compareTo(value2) : value2.compareTo(value1);
}


