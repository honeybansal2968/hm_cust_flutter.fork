import 'package:flutter/material.dart';
import 'screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class ShimmerImage extends StatefulWidget {
  const ShimmerImage({super.key});

  @override
  _ShimmerImageState createState() => _ShimmerImageState();
}

class _ShimmerImageState extends State<ShimmerImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);

    _animation = ColorTween(
      begin: Colors.grey.shade300,
      end: Colors.grey.shade100,
    ).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [_animation.value!, Colors.grey.shade200, _animation.value!],
          stops: const [0.0, 0.5, 1.0],
        ),
      ),
      child: const Image(
        image: NetworkImage(
            'https://placekitten.com/300/300'), // Replace with your image URL
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Shimmer Image Example'),
        ),
        body: const Center(
          child: MyHomePage(),
        ),
      ),
    );
  }
}
