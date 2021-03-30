import 'package:flutter/material.dart';

class Documentary extends ChangeNotifier {
  String image;
  String title;
  String subtitle;
  String letterText;
  int numbLike;
  int numbLove;
  int numbSurprise;
  int numbAngry;
  int numbCry;
  bool isLike;
  bool isLove;
  bool isSurprise;
  bool isAngry;
  bool isCry;
  bool patriota;
  bool premium;

  Documentary({
    this.image,
    this.title,
    this.subtitle,
    this.letterText,
    this.numbAngry = 0,
    this.numbCry = 0,
    this.numbLike = 0,
    this.numbLove = 0,
    this.numbSurprise = 0,
    this.isAngry = false,
    this.isCry = false,
    this.isLike = false,
    this.isLove = false,
    this.isSurprise = false,
    this.patriota = false,
    this.premium = false,
  });
  Documentary.fromJson(Map<dynamic, dynamic> json)
      : image = json['image'],
        title = json['title'],
        subtitle = json['subtitle'],
        letterText = json['letterText'],
        numbAngry = json['numAngry'],
        numbCry = json['numbCry'],
        numbLike = json['numbLike'],
        numbLove = json['numbLove'],
        numbSurprise = json['numbSurprise'],
        isAngry = json['isAngry'],
        isCry = json['isCry'],
        isLike = json['isLike'],
        isLove = json['isLove'],
        isSurprise = json['isSurprise'],
        patriota = json['patriota'],
        premium = json['premium'];
  Map toJson() {
    return {
      "patriota": this.patriota,
      "premium": this.premium,
      "image": this.image,
      "title": this.title,
      "subtitle": this.subtitle,
      "numbLike": this.numbLike,
      "numbLove": this.numbLove,
      "numbSurprise": this.numbSurprise,
      "numbAngry": this.numbAngry,
      "numbCry": this.numbCry,
      "isLike": this.isLike,
      "isLove": this.isLove,
      "isSurprise": this.isSurprise,
      "isAngry": this.isAngry,
      "isCry": this.isCry,
      "letterText": this.letterText
    };
  }

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
