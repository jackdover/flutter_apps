import 'package:flutter/material.dart';

class CholiceChipSkuItem extends StatefulWidget {
  final List<SelectOption> selectOptions;
  String selectedId;
  final void Function(SelectOption option, bool isSelect) onSelect;

  CholiceChipSkuItem({Key key, this.selectOptions, this.selectedId,this.onSelect}) : super(key: key);

  @override
  _CholiceChipSkuItemState createState() => _CholiceChipSkuItemState();
}

class _CholiceChipSkuItemState extends State<CholiceChipSkuItem> {
  int _value;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 0,
      children: _build(), // 方式2
    );
    /*[
          /// 方式1
          // ...widget.selectOptions.map((button) {
          //   return customCholiceChip(
          //     text: button?.label,
          //     isSelected: widget.selectedId == button?.id,
          //     onSelected: (isSelected) {
          //       setState(() {
          //         widget.selectedId = button.id;
          //       });
          //       widget?.onSelect(button, isSelected);
          //     },
          //   );
          // }),
        ]*/
  }

  /// 方式2
  List<Widget> _build() {
    List<Widget> temp = [];
    for (int i = 0; i < widget.selectOptions.length; i++) {

      var isSelected = widget.selectedId == widget.selectOptions[i].id;
      temp.add(ChoiceChip(
        label: Text(widget.selectOptions[i].label,
          style: TextStyle(
          fontSize: 12,
          color: /*_value == i*/isSelected ? Colors.red : Colors.black,
        ),),
        elevation: 0.0,
        padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
        pressElevation: 0,
        selectedColor: Colors.red.withAlpha(39),
        // selectedShadowColor: Colors.red,
        backgroundColor: Colors.grey[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: BorderSide(color: /*_value == i*/isSelected ? Colors.red : Colors.transparent, width: 1),
        ),
        // selected: _value == i,
        selected: isSelected,
        onSelected: (bool selected) {
          setState(() {
            _value = selected ? i : null;
          });
          if(selected){
            widget.selectedId = widget.selectOptions[i].id;
          }
          if(widget.onSelect!=null){
            widget.onSelect(widget.selectOptions[i],_value == i);
          }
        },
      ));
    }

    return temp;
  }

  customCholiceChip({
    String text,
    bool isSelected,
    double width,
    double height = 26,
    void Function(bool) onSelected,
  }) {
    return SizedBox(
      height: height,
      child: ChoiceChip(
        label: SizedBox(
          width: width,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: isSelected ? Colors.red : Colors.black,
            ),
          ),
        ),
        padding: EdgeInsets.fromLTRB(5, 0, 5, 8),
        pressElevation: 0,
        selectedColor: Colors.red,
        selected: isSelected,
        backgroundColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: isSelected ? Colors.red : Colors.transparent, width: 1),
        ),
        onSelected: onSelected,
        // shape: BoxShape.circle,
      ),
    );
  }
}

class SelectOption {
  String id;
  String label;
  dynamic value;

  SelectOption({this.id, this.label, this.value});
}
