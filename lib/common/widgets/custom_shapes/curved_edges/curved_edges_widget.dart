import 'package:flutter/material.dart';
import 'package:shoppy/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class NcurvedEdgeWidget extends StatelessWidget {
  const NcurvedEdgeWidget({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: NCustomCurvedEdges(),
      child: child ?? Container(),
    );
  }
}
