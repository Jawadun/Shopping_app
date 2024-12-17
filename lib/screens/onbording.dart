import 'dart:async'; 
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(); 
  final List<String> _imagePaths = [
    'assets/image/onboarding1.png', 
    'assets/image/onboarding2.png',
    'assets/image/onboarding3.png',
  ];

  int _currentIndex = 0; 

  @override
  void initState() {
    super.initState();

    
    Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_currentIndex < _imagePaths.length - 1) {
        _currentIndex++;
      } else {
        _currentIndex = 0;
      }
      _pageController.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // PageView for sliding images
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _imagePaths.length,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Image.asset(
                  _imagePaths[index],
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          const SizedBox(height: 20),

          // Dot indicators
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              _imagePaths.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: _currentIndex == index ? 12 : 8,
                height: _currentIndex == index ? 12 : 8,
                decoration: BoxDecoration(
                  color: _currentIndex == index
                      ? Colors.blue
                      : Colors.grey.shade400,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),

          
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login'); 
            },
            child: const Text('Get Started'),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose(); 
    super.dispose();
  }
}
