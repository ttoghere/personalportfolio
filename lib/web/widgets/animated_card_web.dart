import 'package:flutter/material.dart';
import 'package:personalportfolio/web/widgets/widgets.dart';

class AnimatedCardWeb extends StatefulWidget {
  final String imagePath;
  final String text;
  final BoxFit fit;
  final bool reverse;
  const AnimatedCardWeb({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.fit,
    required this.reverse,
  }) : super(key: key);

  @override
  State<AnimatedCardWeb> createState() => _AnimatedCardWebState();
}

class _AnimatedCardWebState extends State<AnimatedCardWeb>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _animation;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat(reverse: true);
    _animation = Tween(
      begin: widget.reverse == true ? const Offset(0, 0.08) : Offset.zero,
      end: widget.reverse == true ? Offset.zero : const Offset(0, 0.08),
    ).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        shadowColor: Colors.red[900],
        elevation: 30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            color: Colors.red[900]!,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.imagePath,
                height: 200,
                width: 200,
                fit: widget.fit,
              ),
              const SizedBox(
                height: 10,
              ),
              Sans(
                text: widget.text,
                size: 15,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
