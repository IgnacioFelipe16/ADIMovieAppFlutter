import 'package:flutter/material.dart';
import 'package:movie_app/widgets/CustomNavBar.dart';

class CategoryPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      // Para volver la página anterior (Home)
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Descubrir",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(
                  children: [
                    for (int i=1; i<11; i++)
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                       children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "images/$i.jfif",
                            height: 70,
                            width: 90,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text(
                          "Categoría",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 23,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
      bottomNavigationBar: CustomNavBar(),
  );
}
}