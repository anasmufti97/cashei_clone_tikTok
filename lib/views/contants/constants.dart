import 'package:cashei/views/screens/User_profile.dart';
import 'package:cashei/views/screens/weekly_challenges_screen.dart';
import 'package:cashei/views/screens/winners_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:cashei/views/screens/video_screen.dart';

List pages = [
  VideoScreen(),
  WeeklyChallengesScreen(),
  // const AddVideoScreen(),
  WinnerScreen(),
  UserProfile(),
];

// COLORS

const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

// FIREBASE
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

// CONTROLLER
// var authController = AuthController.instance;
