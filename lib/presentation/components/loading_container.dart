import 'package:flutter/material.dart';


class LoadingContainer extends StatefulWidget {
  final Color color;
  final double height;
  final double weight;

  const LoadingContainer(
      {Key? key,
        required this.color,
        required this.height,
        required this.weight})
      : super(key: key);

  @override
  State<LoadingContainer> createState() => _LoadingContainerState();
}

class _LoadingContainerState extends State<LoadingContainer> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: widget.height,
      width: widget.weight,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    );
  }
}