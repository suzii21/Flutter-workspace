import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'menu-2.dart';

class MenuPage1 extends StatefulWidget {
  const MenuPage1({Key? key}) : super(key: key);

  @override
  State<MenuPage1> createState() => _MenuPage1();
}

class _MenuPage1 extends State<MenuPage1> {
  List<String> items = ["Recommend", "Popular", "Noodles", "Pizza"];
  List<String> foodList = ["Soba Soup", "Sai Ua Samun Phrai", "Ratatouille"];
  List<String> foodImagesList = [
    "https://www.saveur.com/uploads/2019/02/08/VIZG3J3LIA3W2OXXZ77IKPFH6M.jpg?auto=webp",
    "https://assets.bonappetit.com/photos/5d9381937aec380009d030f6/1:1/w_2240,c_limit/Al-Desko-Desk-Dip-Recipe.jpghttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQrGBe6ffzSYd1R12USlYGLRQnBVVpuYIZU7OB-ltn7g&s",
    "https://media.istockphoto.com/id/1348577533/photo/ratatouille-pasta-salad.jpg?s=612x612&w=0&k=20&c=CKo2hUwzdcaUCxrGq8XqZSIs1jnW_QE7tgZm9ZIMsqw="
  ];
  List<String> foodPriceList = ["\$12", "\$18", "\$18"];
  List<String> foodDescription = ["No.1 in Sale", "Low Fat", "Highly Recommended"];

  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr, // or TextDirection.rtl if your app is RTL
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
            ),
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Restaurant",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Container(
                                  width: 90,
                                  height: 30,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    "20-30 min",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "2.4km Restaurant",
                                  style: TextStyle(
                                    color: Colors.grey.shade300,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.only(top: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 1,
                                spreadRadius: 1,
                                offset: Offset(1, 1),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.network("https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/d7/49/8e/d7498e08-1fb8-5d23-9c55-d3c5392681b2/AppIcon-Production-0-1x_U007epad-0-85-220.png/460x0w.webp"),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\"Orange sandwiches is delicious\"",
                          style: TextStyle(fontSize: 14.5),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star_border, color: Colors.yellow),
                            Text(
                              "4.7",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            SizedBox(width: 5)
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: ListView.builder(
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return InkWell(
                      onTap: () {
                        selectedItem = index;
                        setState(() {});
                      },
                      child: selectedItem == index
                          ? Container(
                        width: 120,
                        height: 40,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.yellow.shade700,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          items[index],
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                      )
                          : Container(
                        width: 120,
                        height: 40,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          items[index],
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: foodList.length,
                  itemBuilder: (ctx, idx) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MenuPage2(
                              image: foodImagesList[idx],
                              diceName: foodList[idx],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        height: 120,
                        margin:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 10),
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          foodImagesList[idx].toString()),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      foodList[idx],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      foodDescription[idx],
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      foodPriceList[idx],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Icon(Icons.navigate_next),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow.shade700,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          child: Icon(Icons.shopping_bag_outlined, size: 18),
          onPressed: () {},
        ),
      ),
    );
  }
}
