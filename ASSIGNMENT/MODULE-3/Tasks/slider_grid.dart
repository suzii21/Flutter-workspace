import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model.dart';

class SlidPage extends StatefulWidget{
  @override
  SlidState createState() => SlidState();
}
class SlidState extends State<SlidPage>{
  final List<Model> items =
  [
    Model(image: 'https://nestasia.in/cdn/shop/products/DSC03418_1b5b6685-17f8-476c-a3fd-a197728d6859.jpg?v=1692594165',title: 'ROSE',subtitle: 'Description1'),
    Model(image: 'https://images.unsplash.com/photo-1589994160839-163cd867cfe8?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dHVsaXAlMjBib3VxdWV0fGVufDB8fDB8fHww',title: 'TULIP',subtitle: 'Description2'),
    Model(image: 'https://images.unsplash.com/photo-1621154089496-ba8c17a77486?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGxpbHl8ZW58MHx8MHx8fDA%3D',title: 'LILY',subtitle: 'Description3'),
    Model(image: 'https://images.pexels.com/photos/2421207/pexels-photo-2421207.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',title: 'PEONIIES',subtitle: 'Description4'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider and Grid App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(30.00),
        child: ListView(
          children: [
            CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage("https://nestasia.in/cdn/shop/products/DSC03418_1b5b6685-17f8-476c-a3fd-a197728d6859.jpg?v=1692594165"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: NetworkImage("https://images.unsplash.com/photo-1589994160839-163cd867cfe8?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dHVsaXAlMjBib3VxdWV0fGVufDB8fDB8fHww"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.picture.lk%2Fphoto%2F18138%2Fbeautiful-sunflower-aesthetics-97&psig=AOvVaw3QD9fViEQ2Mxauw0Wq92I5&ust=1703840427124000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCIjt9a_isYMDFQAAAAAdAAAAABAU"),
                    ),
                  ),
                ),


                Container(
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: NetworkImage("https://images.pexels.com/photos/2421207/pexels-photo-2421207.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

              ],

              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.easeInBack,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),),


            GridView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return GridItem(model: items[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final Model model;

  GridItem({required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey[300],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            model.image,
            height: 300.0,
            width: 300.0,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8.0),
          Text(
            model.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(model.subtitle),
        ],
      ),
    );
  }
}
