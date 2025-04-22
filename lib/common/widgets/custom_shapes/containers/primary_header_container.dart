import 'package:flutter/material.dart';
import 'package:shoppy/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:shoppy/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:shoppy/utils/constants/colors.dart';

class NprimaryHeader extends StatelessWidget {
  const NprimaryHeader({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return NcurvedEdgeWidget(
      child: SizedBox(
        height: 360,
        child: Container(
          color: NColors.primary,
          child: Stack(
            children: [
              //background custom shapes

              Positioned(
                top: -150,
                right: -250,
                child: NRoundedContainer(
                  backgroundColor: NColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: NRoundedContainer(
                  backgroundColor: NColors.textWhite.withOpacity(0.1),
                ),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
