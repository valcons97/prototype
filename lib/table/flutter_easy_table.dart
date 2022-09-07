import 'package:flutter/material.dart';
import 'package:flutter_editable_table/constants.dart';
import 'package:flutter_editable_table/entities/table_entity.dart';
import 'package:flutter_editable_table/flutter_editable_table.dart';

class EditTableV2 extends StatelessWidget {
  const EditTableV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Fluter Edit Table

    final _editableTableKey = GlobalKey<EditableTableState>();

    final data = {
      "column_count": null,
      "row_count": null,
      "addable": true,
      "removable": true,
      "caption": {
        "layout_direction": "row",
        "main_caption": {
          "title": "Caption",
          "display": true,
          "editable": false,
          "style": {
            "font_weight": "bold",
            "font_size": 18.0,
            "font_color": "#333333",
            "background_color": null,
            "horizontal_alignment": "center",
            "vertical_alignment": "center",
            "text_align": "center"
          }
        },
        "sub_caption": {
          "title": null,
          "display": true,
          "editable": true,
          "input_decoration": {
            "min_lines": 1,
            "max_lines": 1,
            "max_length": 64,
            "hint_text": "Please input the sub-caption",
            "fill_color": null
          },
          "constrains": {"required": true},
          "style": {
            "font_weight": "normal",
            "font_size": 14.0,
            "font_color": "#333333",
            "background_color": null,
            "horizontal_alignment": "center",
            "vertical_alignment": "center",
            "text_align": "center"
          }
        }
      },
      "columns": [
        {
          "primary_key": true,
          "name": "id",
          "type": "int",
          "format": null,
          "description": null,
          "display": false,
          "editable": false,
          "style": {
            "font_weight": "bold",
            "font_size": 14.0,
            "font_color": "#333333",
            "background_color": "#b5cfd2",
            "horizontal_alignment": "center",
            "vertical_alignment": "center",
            "text_align": "center"
          }
        },
        {
          "auto_increase": true,
          "type": "int",
          "format": "Step __VALUE__",
          "description": null,
          "display": true,
          "editable": false,
          "width_factor": 0.2,
          "style": {
            "font_weight": "bold",
            "font_size": 14.0,
            "font_color": "#333333",
            "background_color": "#b5cfd2",
            "horizontal_alignment": "center",
            "vertical_alignment": "center",
            "text_align": "center"
          }
        },
        {
          "name": "name",
          "title": "Name",
          "type": "string",
          "format": null,
          "description": "User Name",
          "display": true,
          "editable": true,
          "width_factor": 0.4,
          "input_decoration": {
            "min_lines": 1,
            "max_lines": 1,
            "max_length": 128,
            "hint_text": "Please input the name"
          },
          "constrains": {"required": true},
          "style": {
            "font_weight": "bold",
            "font_size": 14.0,
            "font_color": "#333333",
            "background_color": "#b5cfd2",
            "horizontal_alignment": "center",
            "vertical_alignment": "center",
            "text_align": "center"
          }
        },
        {
          "name": "age",
          "title": "Age",
          "type": "integer",
          "format": null,
          "description": "Age",
          "display": true,
          "editable": true,
          "width_factor": 0.2,
          "input_decoration": {
            "min_lines": 1,
            "max_lines": 1,
            "max_length": 3,
            "hint_text": "Please input the age"
          },
          "constrains": {"required": true, "minimum": 1, "maximum": 120},
          "style": {
            "font_weight": "bold",
            "font_size": 14.0,
            "font_color": "#333333",
            "background_color": "#b5cfd2",
            "horizontal_alignment": "center",
            "vertical_alignment": "center",
            "text_align": "center"
          }
        },
      ],
      "rows": [
        {
          "id": 0,
          "name": "Tom",
          "age": 18,
          "desc": "I'm Tom, Tom, Tom",
          "salary": 1000.5,
          "married": false,
          "d_o_m": null,
          "l_s_t": null
        },
        {
          "id": 1,
          "name": "Sam",
          "age": 20,
          "desc": null,
          "salary": 1234.5,
          "married": false,
          "d_o_m": null,
          "l_s_t": "2021-06-23 11:28"
        },
        {
          "id": 2,
          "name": "Olivia",
          "age": 25,
          "desc": null,
          "salary": 2500.0,
          "married": true,
          "d_o_m": "2020-10-01",
          "l_s_t": "2021-01-08 20:20"
        },
        {
          "id": 3,
          "name": "Liam",
          "age": 23,
          "desc": null,
          "salary": 3000.0,
          "married": true,
          "d_o_m": "2018-08-01",
          "l_s_t": "2021-11-11 18:10"
        },
        {
          "id": 4,
          "name": "David",
          "age": 26,
          "desc": null,
          "salary": 2300.0,
          "married": true,
          "d_o_m": "2019-03-05",
          "l_s_t": "2021-12-08 21:30"
        },
      ],
      "footer": {
        "layout_direction": "row",
        "content": [
          {
            "title": "Average Age: 22.4",
            "display": true,
            "editable": false,
            "style": {
              "font_weight": "normal",
              "font_size": 14.0,
              "font_color": "#333333",
              "background_color": null,
              "horizontal_alignment": "center",
              "vertical_alignment": "center",
              "text_align": "center"
            }
          },
          {
            "title": "Married: 3",
            "display": true,
            "editable": false,
            "style": {
              "font_weight": "normal",
              "font_size": 14.0,
              "font_color": "#333333",
              "background_color": null,
              "horizontal_alignment": "center",
              "vertical_alignment": "center",
              "text_align": "center"
            }
          },
          {
            "title": null,
            "display": true,
            "editable": true,
            "input_decoration": {
              "min_lines": 1,
              "max_lines": 1,
              "max_length": 64,
              "hint_text": "Please input identity",
              "fill_color": null
            },
            "constrains": {"required": true},
            "style": {
              "font_weight": "normal",
              "font_size": 14.0,
              "font_color": "#333333",
              "background_color": null,
              "horizontal_alignment": "center",
              "vertical_alignment": "center",
              "text_align": "center"
            }
          }
        ]
      }
    };

    bool editing = false;
    return Container(
      color: Colors.white,
      child: EditableTable(
        key: _editableTableKey,
        data: data,
        entity: TableEntity.fromJson(data),
        readOnly: true,
        tablePadding: const EdgeInsets.all(8.0),
        captionBorder: const Border(
          top: BorderSide(color: Color(0xFF999999)),
          left: BorderSide(color: Color(0xFF999999)),
          right: BorderSide(color: Color(0xFF999999)),
        ),
        headerBorder: Border.all(color: const Color(0xFF999999)),
        rowBorder: Border.all(color: const Color(0xFF999999)),
        footerBorder: Border.all(color: const Color(0xFF999999)),
        removeRowIcon: const Icon(
          Icons.remove_circle_outline,
          size: 24.0,
          color: Colors.redAccent,
        ),
        addRowIcon: const Icon(
          Icons.add_circle_outline,
          size: 24.0,
          color: Colors.white,
        ),
        addRowIconContainerBackgroundColor: Colors.blueAccent,
        formFieldAutoValidateMode: AutovalidateMode.always,
        onRowRemoved: (row) {
          print('row removed: ${row.toString()}');
        },
        onRowAdded: () {
          print('row added');
        },
        onFilling: (FillingArea area, dynamic value) {
          print('filling: ${area.toString()}, value: ${value.toString()}');
        },
        onSubmitted: (FillingArea area, dynamic value) {
          print('submitted: ${area.toString()}, value: ${value.toString()}');
        },
      ),
    );
  }
}
