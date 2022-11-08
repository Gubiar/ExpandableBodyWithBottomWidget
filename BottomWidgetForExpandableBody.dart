import 'package:flutter/material.dart';

class BottomWidgetForExpandableBody extends StatefulWidget {
  final Widget body;
  final Widget bottomWidget;

  const BottomWidgetForExpandableBody({
    @required this.body,
    @required this.bottomWidget,
    Key key
  }) : super(key: key);

  @override
  State<BottomWidgetForExpandableBody> createState() => _BottomWidgetForExpandableBodyState();
}

class _BottomWidgetForExpandableBodyState extends State<BottomWidgetForExpandableBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        slivers: [

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Expanded(
                  child: widget.body,
                ),

                widget.bottomWidget,

              ],
            ),
          )

        ],
      ),
    );
  }
}
