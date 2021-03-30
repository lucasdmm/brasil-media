import 'package:flutter/material.dart';

class Documentary extends ChangeNotifier {
  String image;
  String title;
  String subtitle;
  String letterText;
  int numbLike = 0;
  int numbLove = 0;
  int numbSurprise = 0;
  int numbAngry = 0;
  int numbCry = 0;
  bool isLike = false;
  bool isLove = false;
  bool isSurprise = false;
  bool isAngry = false;
  bool isCry = false;

  Documentary({
    this.image,
    this.title,
    this.subtitle,
    this.letterText,
  });

  like() {
    this.isLike = !this.isLike;
    if (isLike) {
      numbLike++;
    }
    notifyListeners();
  }

  love() {
    this.isLove = !this.isLove;
    if (isLove) {
      numbLove++;
    }
    notifyListeners();
  }

  surprise() {
    this.isSurprise = !this.isSurprise;
    if (isSurprise) {
      numbSurprise++;
    }
    notifyListeners();
  }

  angry() {
    this.isAngry = !this.isAngry;
    if (isAngry) {
      numbAngry++;
    }
    notifyListeners();
  }

  cry() {
    this.isCry = !this.isCry;
    if (isCry) {
      numbCry++;
    }
    notifyListeners();
  }

  clearCounters() {
    numbAngry = 0;
    numbCry = 0;
    numbLike = 0;
    numbLove = 0;
    numbSurprise = 0;
    notifyListeners();
  }
}
