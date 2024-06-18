import 'package:flutter/material.dart';
import 'package:movie_app/widgets/CustomNavBar.dart';

class MoviePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: Image.asset(
              "images/cover.jfif",
              height: 280,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [],
              )
            ),
          )
        ],
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}