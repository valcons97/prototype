import 'package:editable/editable.dart';
import 'package:flutter/material.dart';

class EditTableV1 extends StatefulWidget {
  const EditTableV1({Key? key}) : super(key: key);

  @override
  State<EditTableV1> createState() => _EditTableV1State();
}

class _EditTableV1State extends State<EditTableV1> {
  @override
  Widget build(BuildContext context) {
    final _editableKey = GlobalKey<EditableState>();

    List rows = [
      {
        "name": 'James LongName Joe',
        "date": '23/09/2020',
        "month": 'June',
        "status": 'completed'
      },
      {
        "name": 'Daniel Paul',
        "month": 'March',
        "status": 'new',
        "date": '12/4/2020',
      },
      {
        "month": 'May',
        "name": 'Mark Zuckerberg',
        "date": '09/4/1993',
        "status": 'expert'
      },
      {
        "name": 'Jack',
        "status": 'legend',
        "date": '01/7/1820',
        "month": 'December',
      },
    ];
    List cols = [
      {"title": 'Name', 'widthFactor': 0.2, 'key': 'name', 'editable': false},
      {"title": 'Date', 'widthFactor': 0.2, 'key': 'date'},
      {"title": 'Month', 'widthFactor': 0.2, 'key': 'month'},
      {"title": 'Status', 'key': 'status'},
    ];

    return Container(
      color: Colors.white,
      child: Editable(
        key: _editableKey,
        columns: cols,
        rows: rows,
        zebraStripe: true,
        stripeColor1: Colors.blue.shade100,
        stripeColor2: Colors.grey.shade200,
        onRowSaved: (value) {
          print(value);
        },
        onSubmitted: (value) {
          print(value);
        },
        borderColor: Colors.blueGrey,
        tdStyle: const TextStyle(fontWeight: FontWeight.bold),
        trHeight: 80,
        thStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        thAlignment: TextAlign.center,
        thVertAlignment: CrossAxisAlignment.end,
        thPaddingBottom: 3,
        showSaveIcon: true,
        saveIconColor: Colors.black,
        showCreateButton: true,
        tdAlignment: TextAlign.left,
        tdEditableMaxLines: 100, // don't limit and allow data to wrap
        tdPaddingTop: 20,
        tdPaddingBottom: 14,
        tdPaddingLeft: 10,
        tdPaddingRight: 8,
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.all(Radius.circular(0))),
      ),
    );
  }
}
