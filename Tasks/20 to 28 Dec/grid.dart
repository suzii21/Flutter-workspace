// import 'package:flutter/material.dart';
// import 'model.dart';
//
// class CustomGrid extends StatefulWidget
// {
//   const CustomGrid({super.key});
//   @override
//   State<CustomGrid> createState() => _CustomGridState();
// }
// class _CustomGridState extends State<CustomGrid>
// {
//   final List<Model> items =
//   [
//     Model(image: 'https://nestasia.in/cdn/shop/products/DSC03418_1b5b6685-17f8-476c-a3fd-a197728d6859.jpg?v=1692594165', text: 'ROSE'),
//     Model(image: 'https://images.unsplash.com/photo-1589994160839-163cd867cfe8?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dHVsaXAlMjBib3VxdWV0fGVufDB8fDB8fHww', text: 'TULIP'),
//     Model(image: 'https://e0.pxfuel.com/wallpapers/576/625/desktop-wallpaper-iphone-sunflower-aesthetic-sunflower-phone-thumbnail.jpgimport 'package:carousel_slider/carousel_slider.dart';
//
//     class Slid extends StatefulWidget{
//     @override
//     SlidState createState() => SlidState();
//
//     }
//
//         class SlidState extends State<Slid>{
//
//
//
//         final List<Model> items =
//         [
//         Model(image: 'images/imgg1.jpg',title: 'ThunderStrome',subtitle: 'Description1'),
//         Model(image: 'images/imgg2.jpg',title: 'Sunny',subtitle: 'Description2'),
//         Model(image: 'images/imgg3.png',title: 'CloudySky',subtitle: 'Description3'),
//         Model(image: 'images/imgg4.jpg',title: 'Rainy',subtitle: 'Description4'),
//         ];
//
//
//         @override
//         Widget build(BuildContext context) {
//
//         return Scaffold(
//
//         appBar: AppBar(
//         title: Text('Slider and Grid App'),
//         ),
//         body: Padding(
//         padding: EdgeInsets.all(30.00),
//         child: ListView(
//
//         children: [
//
//
//
//         CarouselSlider(
//         items: [
//
//         Container(
//         margin: EdgeInsets.all(10.0),
//         decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10.0),
//         image: DecorationImage(
//         image: AssetImage("images/imgg2.jpg"),
//         fit: BoxFit.cover,
//         ),
//         ),
//         ),
//
//         Container(
//         margin: EdgeInsets.all(10.0),
//         decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10.0),
//         image: DecorationImage(
//         image: AssetImage("images/imgg3.png"),
//         fit: BoxFit.cover,
//         ),
//         ),
//         ),
//
//         Container(
//         margin: EdgeInsets.all(10.0),
//         decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10.0),
//         image: DecorationImage(
//         image: AssetImage("images/imgg4.jpg"),
//         fit: BoxFit.cover,
//         ),
//         ),
//         ),
//
//
//         Container(
//         margin: EdgeInsets.all(10.0),
//         decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10.0),
//         image: DecorationImage(
//         image: AssetImage("images/imgg1.jpg"),
//         fit: BoxFit.cover,
//         ),
//         ),
//         ),
//
//         ],
//
//         options: CarouselOptions(
//         height: 200.0,
//         enlargeCenterPage: true,
//         autoPlay: true,
//         aspectRatio: 16 / 9,
//         autoPlayCurve: Curves.easeInBack,
//         enableInfiniteScroll: true,
//         autoPlayAnimationDuration: Duration(milliseconds: 800),
//         viewportFraction: 0.8,
//         ),),
//
//
//         GridView.builder(
//         shrinkWrap: true,
//         itemCount: items.length,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         crossAxisSpacing: 8.0,
//         mainAxisSpacing: 8.0,
//         ),
//         itemBuilder: (BuildContext context, int index) {
//         return GridItem(model: items[index]);
//         },
//         ),
//         ],
//         ),
//         ),
//         );
//         }
//         }
//
//
//
//         class GridItem extends StatelessWidget {
//         final Model model;
//
//         GridItem({required this.model});
//
//         @override
//         W
//         ', text: 'Banana'),
//     Model(image: 'https://cdn4.vectorstock.com/i/1000x1000/27/83/burger-fast-food-hamburger-single-isolated-icon-vector-37422783.jpg', text: 'Apple'),
//     Model(image: 'https://cdn4.vectorstock.com/i/1000x1000/27/83/burger-fast-food-hamburger-single-isolated-icon-vector-37422783.jpg', text: 'Orange'),
//
//   ];
//   @override
//   Widget build(BuildContext context)
//   {
//     return Scaffold(
//       appBar: AppBar(title: Text("Custom Grid"),),
//       body: GridView.builder
//         (
//         itemCount:items.length,
//         itemBuilder: (BuildContext context,int index)
//         {
//           //design for list
//           return ListTile
//             (
//             leading: Image.network(items[index].image,width: 50,height: 50),
//             title: Text(items[index].text),
//           );
//         }, gridDelegate :
//       SliverGridDelegateWithFixedCrossAxisCount
//         (
//           crossAxisCount: 2,
//           crossAxisSpacing: 4.0,
//           mainAxisSpacing: 4.0
//       ),
//       ),
//     );
//   }
// }