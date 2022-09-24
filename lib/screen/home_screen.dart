import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  Widget singalProducts() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 240,
        width: 165,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 253, 255, 253),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                //flex: 3,

                child: Image.network(
              'https://b.zmtcdn.com/data/dish_photos/f50/5d0b92d044ac685fbefaacbe4fc50f50.jpg?fit=around|130:130&crop=130:130;*,*',
              height: 500,
              width: 900,
              fit: BoxFit.fitWidth,
            )),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      ' Masal Dosa',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    '   ₹70',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: OutlinedButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                      'Add',
                                      style: TextStyle(fontSize: 10),
                                    )),
                                    Expanded(
                                        child: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.yellow,
                                    ))
                                  ],
                                )),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              child: OutlinedButton(
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.remove,
                                        size: 15,
                                        color: Colors.yellow,
                                      ),
                                      Text(
                                        '1',
                                        style: TextStyle(
                                            color: Colors.yellow,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.add,
                                        size: 15,
                                        color: Colors.yellow,
                                      )
                                    ],
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xffd4d181),
            child: Icon(
              Icons.search,
              size: 18,
              color: Colors.black,
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Color(0xffd4d181),
                  child: Icon(
                    Icons.shop,
                    size: 18,
                    color: Colors.black,
                  )))
        ],
        backgroundColor: Color(0xffd6b738),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child:ListView(children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.pexels.com/photos/1565982/pexels-photo-1565982.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')),
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 130, bottom: 10),
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xffd1ad17),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Vegan',
                              style: TextStyle(
                                fontSize: 23,
                                color: Colors.white,
                                shadows: [
                                  BoxShadow(
                                      color: Colors.green,
                                      blurRadius: 10,
                                      offset: Offset(3, 3))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        '30% Off',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.green[100],
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'On all food products',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Breakfasts',style: TextStyle(fontSize: 25,),),
                Text(
                  'View all',
                  style: TextStyle(color: Color.fromARGB(255, 84, 78, 78)),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                singalProducts(),
                singalProducts(),
                singalProducts(),
                singalProducts(),
              ],
            ),
          ),
             Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Pizzas',style: TextStyle(fontSize: 25,),),
                Text(
                  'View all',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
            SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                singalProducts(),
                singalProducts(),
                singalProducts(),
                singalProducts(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
