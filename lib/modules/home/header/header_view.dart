import 'package:flutter/material.dart';

import '../../../resources/color_manager.dart';
import '../../../widgets/widgets.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 8,
          child: Container(
            child: Card(
              color: ColorManager.blue2,
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.monetization_on_rounded,
                          size: 15,
                          color: ColorManager.blue6,
                        ),
                        SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            "100000000000000",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 5,
                      thickness: 1.5,
                      color: ColorManager.blue6,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.diamond,
                          size: 15,
                          color: ColorManager.blue6,
                        ),
                        SizedBox(width: 4),
                        Text(
                          "0",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        customCard(time: '11:00', color: ColorManager.blue6, elevation: 2.0, borderRadius: 8.0),
        customCard(time: '11:00', color: ColorManager.pending, elevation: 2.0, borderRadius: 8.0),
        customCard(time: '11:00', color: ColorManager.success, elevation: 2.0, borderRadius: 8.0),
        customCard(time: '11:00', color: ColorManager.error, elevation: 2.0, borderRadius: 8.0),
        Flexible(
          flex: 2,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
          ),
        ),
        Flexible(
          flex: 2,
          child: IconButton(
            onPressed: () {
              // Handle volume button press
            },
            icon: Icon(Icons.volume_up),
          ),
        ),
        Flexible(
          flex: 2,
          child: IconButton(
            onPressed: () {
              // Handle help button press
            },
            icon: Icon(Icons.help),
          ),
        ),
        SizedBox(width: 1),
      ],
    );
  }
}
