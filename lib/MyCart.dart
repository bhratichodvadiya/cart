import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mycart/constunt.dart';
import 'package:mycart/utils/colors.dart';

class cart extends StatelessWidget {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return CupertinoPageScaffold(
      child: Column(
        
        children: [
          Gap(20),
          Expanded(
            flex: 0,
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                flex: 0,
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(9),color: AppColor.white,boxShadow: [ BoxShadow(blurRadius: 1)]),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                ),
                              const Expanded(
                                flex: 6,
                                child: Center(
                                                
                                                  child: Text(
                                                    'Cart',
                                                    style: TextStyle(fontSize: 30),
                                                  ),
                                                ),
                              )
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: hit,
              width: wid,

              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: orders.length,
                itemBuilder: (context, index) {
                  final order = orders[index];

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Slidable(
                      closeOnScroll: true,
                      secondaryActions: [
                        IconSlideAction(
                          caption: 'Delete',foregroundColor: Colors.red,
                          color: Colors.red.withOpacity(0.3),
                          icon:Icons.delete,
                          onTap: () {},
                          // onTap: () => _showSnackBar('Delete'),
                        ),
                      ],
                      // endActionPane: ActionPane(
                      //   dragDismissible: true,
                      //   motion: const StretchMotion(),
                      //   children: [
                      //     SlidableAction(
                      //       backgroundColor: Colors.red,
                      //       icon: Icons.delete,
                      //       label: 'Delete',
                      //       borderRadius: BorderRadius.circular(10),
                      //       spacing: 10,
                      //       flex: 3,
                      //       padding:
                      //           EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      //       onPressed: (context) {},
                      //     ),
                      //   ],
                      // ),
                      actionPane: const SlidableDrawerActionPane(),
                      child: buildListTile(order),
                    ),
                  );
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      height: 400,
                      width: wid,
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: Color(0xFFF9F9F9),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Promocode',
                            style: TextStyle(fontSize: 18),
                          ),
                          const Gap(10),
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Card(
                                  margin: const EdgeInsets.all(0),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 14.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'BECODER34FR',
                                        fillColor: AppColor.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Gap(10),
                              Expanded(
                                child: Container(
                                  height: 50,
                                  width: wid,
                                  decoration: BoxDecoration(
                                    color: AppColor.primary,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Apply',
                                    style: TextStyle(color: AppColor.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Sub Total',
                                style: GoogleFonts.openSans(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '₹ 240',
                                style: GoogleFonts.openSans(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Tax & Fees',
                                style: GoogleFonts.openSans(fontSize: 16),
                              ),
                              Text(
                                '+ ₹ 20',
                                style: GoogleFonts.openSans(
                                    fontSize: 16, color: Colors.red),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Delivery Charge',
                                style: GoogleFonts.openSans(fontSize: 16),
                              ),
                              Text(
                                '+ ₹ 40',
                                style: GoogleFonts.openSans(
                                    fontSize: 16, color: Colors.red),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Discount price',
                                style: GoogleFonts.openSans(fontSize: 16),
                              ),
                              Text(
                                '- ₹ 60',
                                style: GoogleFonts.openSans(
                                    fontSize: 16, color: Colors.green),
                              )
                            ],
                          ),
                          const Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Total',
                                style: GoogleFonts.openSans(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '₹ 240',
                                style: GoogleFonts.openSans(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const Gap(20),
                          Container(
                            height: 50,
                            width: wid,
                            decoration: BoxDecoration(
                              color: AppColor.primary,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'Checkout',
                              style: TextStyle(
                                color: AppColor.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: Icon(
                  Icons.book,
                  color: AppColor.primary,
                ),
                backgroundColor: AppColor.white,
              ),
              Gap(10),
            ],
          ),
          Gap(10),
        ],
      ),
      // body: Container(
      //   height: hit,
      //   width: wid,
      //   padding: const EdgeInsets.all(16),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Container(
      //         height: 200,
      //         width: 200,
      //         decoration: BoxDecoration(
      //           image: DecorationImage(
      //               image: AssetImage('assets/images/cart_images.png')),
      //         ),
      //       ),
      //       const Gap(20),
      //       Text(
      //         "Your Cart is Empty",
      //         style: GoogleFonts.openSans(
      //           fontSize: 26,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //       const Gap(10),
      //       Text(
      //         "Good Food is Always Cooking.!\nGo ahead, Order some Yummy items the Menu Food",
      //         textAlign: TextAlign.center,
      //         style: GoogleFonts.openSans(
      //           fontSize: 12,
      //           fontWeight: FontWeight.bold,
      //           color: AppColor.gray,
      //         ),
      //       ),
      //       const Gap(20),
      //       Container(
      //         height: 60,
      //         width: 220,
      //         decoration: BoxDecoration(
      //           color: AppColor.primary,
      //           borderRadius: BorderRadius.circular(10),
      //         ),
      //         alignment: Alignment.center,
      //         child: Text(
      //           'Back to Shopping',
      //           style: TextStyle(
      //             fontSize: 16,
      //             fontWeight: FontWeight.bold,
      //             color: AppColor.white,
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

  Widget buildListTile(final order) {
    return Card(
      color: AppColor.color2.withOpacity(0.70),
      child: ListTile(
        leading: Container(
          height: 70,
          width: 60,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), image: DecorationImage(image: AssetImage(order['image']))),
        ),
        title: Text(order['name']),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${order['quantity']} x ₹ ${order['prize']}'),
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.gray.withOpacity(0.0),
              ),
              padding: EdgeInsets.all(6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: AppColor.white.withOpacity(0.1),
                      border: Border.all(color: AppColor.gray),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 2,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Icon(Icons.remove,color: AppColor.gray,size: 18,),
                  ),
                  Text('${order['quantity']}'),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: AppColor.white.withOpacity(0.1),
                        border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 2,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.add,
                      size: 18,
                      color: AppColor.black300,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
               Container(
                                    width: 46,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 202, 153, 4),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        Text(
                                          '4.7 ',
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    )),



            Text(
              '\$ ${order['prize'] * order['quantity']}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
